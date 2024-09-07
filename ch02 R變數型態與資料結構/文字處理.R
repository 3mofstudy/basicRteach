#https://3mofstudy.github.io/basicRnotes/中級r--文字處理.html

## 內建文字函數

#1.大小寫轉換
tolower("HAPPLY DAY") # 全部轉小寫之函數
toupper("happly day") # 全部轉大寫之函數

#2.文字搜索

dd <- DF$CAUSE1

grep("下咽癌",dd)  #文字搜索,找出位址

grepl("肺炎",dd)  #文字搜索,輸出邏輯性


#3.字元搜尋

dd1 <-    DF[grep("癌",DF$CAUSE1)  ,"CAUSE1"] 
regexpr("癌",text1)

#4.文字取代 sub()  gsub() 

gsub("下咽癌","頭頸癌",dd )

#字元長度 
nchar(dd)

#5.文字擷取

substr(dd,2,4)

substring(dd,2,nchar(dd))

##stringr套件 使用
library(stringr)

str_to_upper("jack")  #全部大寫
str_to_lower("JACK") #全部小寫
str_to_title("jack")  #首字母大小

#文字分割

##特殊符號切割
dd <- c("08/05","7/30","12/31") 
str_split(dd,"/",simplify = T) 

##特殊符號切割--加指定欄數
dd <-  c("蘋果,橘子,香蕉,西瓜","豬肉,牛肉,雞肉,魚肉")

str_split(dd,",",simplify = T) 

str_split_fixed(dd,",",n=3)

str_split_i(dd,",",2 )


#舉例
##轉成純文字 因為這個檔的時間不可以這樣寫要換成純文字才可以讀
##death_notify$DEATHDAY <-  as.character(death_notify$DEATHDAY)
##死因12為口腔癌$DEATHDAY <-  as.character(死因12為口腔癌$DEATHDAY)  





