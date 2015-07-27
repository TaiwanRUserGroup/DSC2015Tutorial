# R 語言資料分析上手課程

課程內容籌備中...

# 安裝R

## Windows

請至 [CRAN](http://cran.csie.ntu.edu.tw) 上下載 R3.2 以上的安裝程式。

或參考 [![在Windows上安裝R](http://img.youtube.com/vi/FsOHPGUIDZU/0.jpg)](http://www.youtube.com/watch?v=FsOHPGUIDZU)

備註：影片中的範例是 3.0.2 的版本，請使用者記得安裝 3.2 以上的版本喔！

## Mac

請至 [CRAN](http://cran.csie.ntu.edu.tw) 上下載 R3.2 以上的安裝程式。

或參考 [![Mac OS X 安裝R軟體](http://img.youtube.com/vi/72MYRBNo5Bk/0.jpg)](http://www.youtube.com/watch?v=72MYRBNo5Bk)

備註：此影片由中華R軟體學會的李明昌老師提供

## Ubuntu

Ubuntu 14.04 的使用者可以在 bash 執行以下指令來安裝學習環境:

    sudo sh -c 'echo "deb http://cran.csie.ntu.edu.tw/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list'
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
    sudo apt-get update && apt-get install -y r-base libcurl4-openssl-dev libxml2-dev

如果是其他版本的使用者，請修改上述 trusty 的部份。

# 安裝課程所需套件

請在R 的Console執行以下指令：

```r
install.packages(c("swirl", "dplyr", "ggplot2"), repos = "http://taiwanrusergroup.github.io/R")
```
