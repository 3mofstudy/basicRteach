#二維異質性維資料 data.frame
##自創data.frame
DT <- data.frame("年齡"=c(35,45,55),
                 "性別"= c("M","F","M"),
                 "生日"= as.Date(c("2000-1-1","2001-2-1","2003-3-1")),
                 )

#用 class() 或 str() 檢查資料結構或類型
str(DT)  #查看完整
class(DT$年齡) #查看單個

# 找出data.frame某行某列的內容
DT[2,3] # 第一參數 row 第二個參數column

# 指定整列 (column)
DT$年齡
DT[,1] #年齡
DT[,"年齡"]

DT[,c(1,2)] #取多個欄位
DT[,c("年齡","生日")] #取多個欄位
DT[,-2]

# 指定整行 (row)
DT[1,]
DT[1:2,]
DT[-2,]

###資料新增
DT$電話 <- c("0988128688","0938123456","0975654381")
DT[4,] <- c(46,"F","1998-08-06","0932457887")


# 變數重新命名
colnames(DT)[1] <-  "年齡"
colnames(DT)[3]<-  "生日"

#######資料合併  column
cbind.data.frame(DT,DA[,c("name","ICD10")])

cbind(DT,DA[,c("name","ICD10")])

#######資料合併  row

DT[,c("age","birth")]
DA[,c("age","birth")]

rbind(DT[,c("age","birth")],DA[,c("age","birth")])


###merge

merge(DT,DA , by.x = "生日", by.y ="birth",all = T)

##  merge 
DT1 <- data.frame("年齡"=c(35,45,55,55),
                  "生日"= as.Date(c("2000-1-1","2001-2-1","2003-3-1","2003-4-1")),
                  "電話"= c("0988128688",NA,"0975654381","0912345688"))



DT2 <-data.frame("age"=c(35,45,55,55),
                 "birth"= as.Date(c("2001-2-1","2003-3-1","2003-4-1","2003-5-1")),
                 "ICD10" =c("A12","C10","M52","A51"))


merge(DT1,DT2 , by.x = "生日", by.y ="birth",all = T)

merge(DT1,DT2 , by.x = "生日", by.y ="birth",all.x = T)
merge(DT1,DT2 , by.x = "生日", by.y ="birth",all.y = T)
