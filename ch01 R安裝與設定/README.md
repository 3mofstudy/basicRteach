## R與 RStiudio安裝

-   到R 官網 <https://www.r-project.org/> 下載最新版本 R

-   到RStudio 官網 <https://posit.co/download/rstudio-desktop/> 下載最新版本 RStudio

## RStiudio 與 Git 連動設定

-   到 <https://git-scm.com/> 下載 Git

-   安裝git 後 開啟Git Bash，輸入以下指令，設定Git 使用者 email 和姓名

    ``` bash
    git config --global user.email <你的email>
    git config --global user.name <你的名子>    
    git config --list  #查看Git 基本設定
    ```

-   到工具列 Tools --\> Global Options

    ![](https://i.postimg.cc/YCWm1NQ6/1-1.png)

-   到 Git executable 設定git.exe的存放目錄 ![](https://i.postimg.cc/c4NQXb4D/1-2.png)

## 下載 GitHub 中 R教學專案 至本地端

-   使用剛剛在本地端 設定的 Git 相同 email 和名子 來註冊github帳號

-   複製GitHub 專案的下載路徑 <https://github.com/3mofstudy/basicRteach.git>

    ![](https://i.postimg.cc/HkYvPxsP/screenshot-4.png)

-   從工具列選取File -\> New Project。

    ![](https://i.postimg.cc/hts1m1vF/2-1.png)

-   選擇 Version Control，建立Git版本控管的新專案

    ![](https://i.postimg.cc/nzGFVrT1/2-2.png)

    ![](https://i.postimg.cc/CLgw5jmB/1-4.png)

-   貼上GitHub 專案的下載路徑，設定好存放目錄

    ![](https://i.postimg.cc/pXGc4vhW/1-5.png)
