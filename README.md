# R 語言資料分析上手課程

目錄
=================

  * [R 語言資料分析上手課程](#r-語言資料分析上手課程)
    * [準備自己的電腦](#準備自己的電腦)
      * [安裝R](#安裝r)
        * [Windows](#windows)
        * [Mac](#mac)
        * [Ubuntu](#ubuntu)
      * [安裝課程所需套件](#安裝課程所需套件)
      * [安裝swirl課程](#安裝swirl課程)
      * [打開課程投影片](#打開課程投影片)
    * [使用Docker環境](#使用docker環境)
    * [使用雲端學習平台](#使用雲端學習平台)

Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc)

**最新DSC2015R套件版本: 0.2.1**

這次年會，我們提供兩種讓學員在課程之中使用R 的方式:

- 使用自己的筆電安裝R 3.2以上的版本及課程所需的套件
- 使用年會提供的雲端學習平台

## 準備自己的電腦

如果學員擁有足夠的電腦知識，願意自行在筆電上安裝R 軟體，則請依照您的作業系統，參考以下的內容安裝R 軟體與相關套件。

### 安裝R

#### Windows

請至 [CRAN](http://cran.csie.ntu.edu.tw) 上下載 R3.2 以上的安裝程式。

或參考 [![在Windows上安裝R](http://img.youtube.com/vi/FsOHPGUIDZU/0.jpg)](http://www.youtube.com/watch?v=FsOHPGUIDZU)

備註：影片中的範例是 3.0.2 的版本，請使用者記得安裝 3.2 以上的版本喔！

#### Mac

請至 [CRAN](http://cran.csie.ntu.edu.tw) 上下載 R3.2 以上的安裝程式。

或參考 [![Mac OS X 安裝R軟體](http://img.youtube.com/vi/72MYRBNo5Bk/0.jpg)](http://www.youtube.com/watch?v=72MYRBNo5Bk)

備註：此影片由中華R軟體學會的李明昌老師提供

#### Ubuntu

Ubuntu 14.04 的使用者可以在 bash 執行以下指令來安裝學習環境:

    sudo sh -c 'echo "deb http://cran.csie.ntu.edu.tw/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list'
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
    sudo apt-get update && apt-get install -y r-base libcurl4-openssl-dev libxml2-dev

如果是其他版本的使用者，請修改上述 trusty 的部份。

### 安裝課程所需套件

請在R 的Console執行以下指令：

```r
source("http://taiwanrusergroup.github.io/R/init.R")
```

或是

```r
options(repos = "http://taiwanrusergroup.github.io/R")
local({
  install.packages('DSC2015R')
  pkgs.remote <- available.packages()
  pkgs.local <- installed.packages()
  pkgs <- intersect(rownames(pkgs.remote), rownames(pkgs.local))
  pkgs.outdated <- package_version(pkgs.local[pkgs, "Version"]) < package_version(pkgs.remote[pkgs, "Version"])
  if (sum(pkgs.outdated) > 0) install.packages(names(which(pkgs.outdated)))
})
```

### 安裝swirl課程

```r
library(DSC2015R)
install_course()
```

### 打開課程投影片

```r
library(DSC2015R)
slide()
```

執行後會出現如下畫面:

```sh
> slide()
1: R swirl (DBoy) 2: R Basic (Ning) 3: R Basic (Noah)
4: R ETL (aha) 5: Visualization (Kyle, Mansun, Ben)
```

請依照指示輸入你想要打開的課程投影片即可。例如，若你想要打開R ETL (aha)的投影片，請輸入`4`。

## 使用Docker環境

```sh
docker pull twrusergroup/dsc2015tutorial
docker run -d -p 8787:8787 twrusergroup/dsc2015tutorial
```

使用瀏覽器開啟 <http://localhost:8787/>

帳號密碼如下

- username: rstudio
- password: rstudio


## 使用雲端學習平台

平台籌備中...
