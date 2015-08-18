#' ## 台灣用電初探
#' 
#' 台灣電力短缺的問題日益嚴重。
#' 本專案想帶領各位同學，利用政府的公開資料，
#' 以及年會課程學到的資料處理技術，
#' 初步分析各產業別用電的經濟效應。
#' 
#' ## 台電歷年尖峰負載及備用容量率
#' 
#' 我國的政府公開資料平台中，有提供
#' [台電歷年尖峰負載及備用容量率](http://data.gov.tw/node/8307)的資料。
#' 下載之後，我們可以利用read.table和file的函數來告知R 資料的文字編碼，
#' 並將表格讀入R中。
#' 透過網站說明，我們需要使用UTF-16作為編碼，才能正確解碼檔案中的中文。

# 檢查檔案內容是否正確

setwd(system.file("project", package = "DSC2015R"))
stopifnot(tools::md5sum("percent_operating_reserve.csv") == "aa6800cb2c6421358dfad782dc95dcfa")

# 載入資料
# **以下的程式碼出錯了，請校正**

percent_operating_reserve <- read.table(file(percent_operating_reserve.csv, encoding = "UTF-16"),
                                       header = TRUE, check.names = FALSE)

stopifnot(nrow(percent_operating_reserve) == 33)

#' ### 計算歷年平均負載
#' 在描述一個連串數據時，我們最常使用的是平均數。
#' 以下範例的目的是要先整理資料後，計算歷年來尖峰負載的平均。

# 透過查詢colnames，我們知道尖峰負載是在第二行，單位是：「萬瓩」
colnames(percent_operating_reserve)

# 檢查raw data
head(percent_operating_reserve[[2]])

# 但是直接計算歷年尖峰負載的平均會導致以下錯誤：

mean(percent_operating_reserve[[2]])

# 先利用class查詢第二行的形態，請修改下列的程式碼

class(percent_operating_reserve<<你的程式碼>>)

#' factor不是數值形態，所以R如果直接計算平均數的時候，會回傳NA(Not Available)。
#' ps. 同學可以仔細閱讀R的警告訊息：
#' In mean.default(percent_operating_reserve[[2]]): argument is not numeric or 
#' logical: returning NA 
#' 裡面就明確地指出，參數不是numeric或logical，所以回傳NA。

# 利用as.numeric函數做轉換
annual_max_power <- as.numeric(<<你的程式碼>>)

# 利用mean計算轉換後的平均
print(annual_max_power_mean <- mean(<<你的程式碼>>))
stopifnot(annual_max_power_mean == 17)

#' 各位同學會不會覺得算出來的數字怪怪的：平均數居然是一個乾淨的整數，
#' 通常平均數都會混雜大量的小數。
#' 如果仔細比對as.numeric(percent_operating_reserve[[2]])和
#' head(percent_operating_reserve[[2]])的結果，
#' 就會發現as.numeric的結果不正確。
#' 在R之中，對於factor形態正確的處理方式，
#' 是透過as.character + as.numeric：

as.numeric(as.character(<<你的程式碼>>))

#' 我們在結果中看到了NA，例如percent_operating_reserve的第6個元素：

percent_operating_reserve[[2]][6]

#' 我們可以看到，第六個元素包含了,，而這是在實際處理數據常常遇到的狀況。
#' 為了要讓R計算正確的結果，我們需要先用gsub把,移除：

# 請利用gsub移除文字中的“,"

annual_max_power_cleaned <- gsub(pattern = ",", replacement = "", x = percent_operating_reserve[[2]])

#' gsub也直接會把輸出結果轉換成character，所以我們不需要再使用as.character，
#' 直接使用as.numeric即可。

# 請利用as.numeric將資料轉換成數值形態

annual_max_power <- as.numeric(<<你的程式碼>>)

# 請利用mean計算歷年尖峰負載的平均

annual_max_power_mean <- mean(<<你的程式碼>>)

stopifnot(all.equal(annual_max_power_mean, 2233.903))

#' ### 繪製歷年尖峰負載圖

library(ggplot2)
df <- data.frame(year = percent_operating_reserve[[1]],
                 max_power = annual_max_power)
ggplot(df, aes(x = <<你的程式碼>>, y = <<你的程式碼>>)) + 
    geom_line() +
    ggtitle("test")



