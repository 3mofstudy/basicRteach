#一維資料 向量 vector 用c()

a <- c(1,5,8,7,9)
a <- c("F","M")
a <- c(F,T,T,F)

a <- c(1,5,8,7,F)


#二維資料 矩陣 matrix  用 matrix()

#ncol為列的設定,nrow = 行設定
MT <- matrix(data =vec,ncol = 12)

#以row方向來排序(參數  byrow)
MT <-matrix(data =1:12,3 ,4, byrow =F)

MT[1:6,4] # 提取


#三維資料 陣列array

array(c(1:50),dim = c(5,5,4))

AD <- array(c(1:50),dim=c(10,5,2))

AD[9,5,2]
AD[4,3,1]

#dimnames參數可幫行列命名(適用於matrix 和 array 這兩種資料結構)
array(c(36,40,25,64,47,21,12,25), 
      dim = c(2, 2, 2), 
      dimnames =list(c("有病", "無病"), c("男", "女"),c("A區","B區")))

####################向量合併####################
#兩個向量合併成一個向量
A= c(1:5)
B= c(6:10)
C =c(A,B)

#兩個向量向量合併成一個矩陣
# rbind
A <- c(1, 2, 3)
B <- c(4, 5, 6)
 rbind(A,B)

# cbind
 A <- c(1, 2, 3)
 B <- c(4, 5, 6)
 cbind(A,B,A,B,A)
 
#############矩陣間合併#################### 
#類似向量合併，都是用rbind和cbind合併，但注意 兩個矩陣的長度需要一致才能合併
 
#創建兩個矩陣
 matrix1 <- matrix(1:6, nrow = 2, ncol = 3)
 matrix2 <- matrix(7:12, nrow = 2, ncol = 3)
 
#按行合併
 result_row <- rbind(matrix1, matrix2)
 
#按列合併
 result_col <- cbind(matrix1, matrix2)
 
 