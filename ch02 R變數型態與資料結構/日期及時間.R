#取得當下時間資訊
Sys.Date()  #當前日期  類似lubridate::today()     
date()      #當前系統日期和時間  
Sys.time()  #當前系統日期和時間  lubridate::now()
Sys.timezone() #有關時區的信息將返回當前時區的名稱

########### 從資料庫擷取死亡欄位後，轉換成日期格式###########
# 1.擷取 資料  
死亡日期 <-  NHI_death$D_DATE 
# 2.轉成文字 
死亡日期 <- as.character(死亡日期)  
# 3.轉成日期 
死亡日期 <- as.Date(死亡日期,tryFormats="%Y%m%d")  

###########擷取特定日期格式###########
#輸出年份：
format(Sys.Date(),format="%Y")   
format(Sys.Date(),format="%y")  
#輸出月份：
format(Sys.Date(),format="%m")
format(Sys.Date(),format="%b")    
format(Sys.Date(),format="%B")
#輸出日期：
format(Sys.Date(),format="%d") 
#輸出星期：
format(Sys.Date(),format="%A") 
format(Sys.Date(),format="%a")
format(Sys.Date(),format="%u")
#輸出週數：
format(as.Date("2024-02-01"),format="%w")
format(as.Date("2024-02-01"),format="%W")

###########擷取特定時間格式###########
format(Sys.time(),format="%H") #輸出小時
format(Sys.time(),format="%M") #輸出分鐘
format(Sys.time(),format="%S") #輸出秒數

############摻雜文字輸出###########  
format(Sys.Date(),format="%Y年%m月%d日") 
format(Sys.Date(),format="西元%Y年%m月%d日")  

#####時間處理##########
as.POSIXlt()  # 如果只有年月日的計算就是上面那種as.DATE格式 可是如果包含到時分秒 就要用到下列轉換
as.POSIXct()   #從1970年1月1日以後開始計算秒數

D1 <- as.POSIXlt("2023-08-01 03:00:00" ,tryFormats = c("%Y-%m-%d %H:%M:%S"))
D2 <- as.POSIXlt("2023-08-02 08:00:00" ,tryFormats = c("%Y-%m-%d %H:%M:%S"))

## 時間處理 加減乘除
#單純加秒數
D1+1
#兩個日期時間相加減
D2-D1   # Time difference of 1.208333 days
difftime(D2,D1, units = "mins") #Time difference of 1740 mins

###############################
library(lubridate)
##呼叫資料
DF <-  sqlFetch(con,"NHI_death",rownames = F)


##用lubridate轉換
DF$轉換  <- ymd(DF$D_DATE)   ####一般轉換  DF$轉換2 <-      as.Date(as.character(DF$D_DATE),"%Y%m%d") 

ymd("20180818")
mdy(040523)
dmy(101020)
ymd("2018 Apr 18")
mdy("Apr 18 23" )

##日期萃取

year(DF$轉換)   #年
month(DF$轉換) #月
mday(DF$轉換) ;day(DF$轉換)   #日
hour(Sys.time()) #時
minute(Sys.time())  #分
second(Sys.time())  #秒
wday(DF$轉換)  #星期
week("2021-12-30")  #一年中週數
days_in_month("2024-02-04") #當月的最大天數


##日期加減

DD <-   ymd_hms("2023-12-15 07:48:31")    

##年份加減 years
DD+ years(1)
##月份加減 months
DD+ months(60)
## 日期
DD- days(28)
##時
DD+ hours(4)
## 分
DD+ minutes(4)
## 秒
DD+seconds(14)

##區間計算

difftime( Sys.Date(), as.Date("2022-12-07"),units= "auto")  
# units = c("auto", "secs", "mins", "hours","days", "weeks"))


## 日期語系轉換

### 方法一 直接使用 lubridate套件
ymd("2018 Apr 18")
mdy("Apr 18 23" )

### 方法二 更換輸出語系，再轉換
Sys.setlocale()  ##查詢當下語系

#設置語言為英語
Sys.setlocale("LC_TIME", locale ="en.UTF-8")  
as.Date("Aug 3, 2024",tryFormats="%b %d, %Y")  

#設置語言為日本語
Sys.setlocale("LC_TIME", locale ="ja_JP.UTF-8") 
format(as.Date("12 3, 2024",tryFormats="%m %d, %Y")  ,"%A") 

#設置語言為韓國語
Sys.setlocale("LC_TIME", locale ="ko_KR.UTF-8") 
format(as.Date("12 3, 2024",tryFormats="%m %d, %Y")  ,"%A")   

#設置語言為法文語
Sys.setlocale("LC_TIME", locale ="fr_FR.UTF-8") 
format(as.Date("12 3, 2024",tryFormats="%m %d, %Y")  ,"%A") 


