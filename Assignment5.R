
#Find the value of inverse of a matrix, determinant of a matrix by using the following values:
# A=matrix(1:100, nrow=10)
# B=matrix(1:1000, nrow=10)

#Question 1a
#Creating a matrix with 100 elements starting from 1 to 100

A<-matrix(1:100, nrow=10)

#create an inverse of matrix A
#The following error message show up
#   Error in solve.default(A) : 
#     Lapack routine dgesv: system is exactly singular: U[6,6] = 0

#The error message suggest that there is an issue with the input data
#and so the matrix cannot be inverted

matrixA <- solve(A)  # this will produce an error message see below for modification of matrix element


#After modifying the matrix a bit by creating a matrix with same 100 elements
#But this time using a random numbers from 1 through 10 we are able to calculate the inverse 

A1<- matrix(sample(1:10,100,replace =T),nrow=10)  #new version of the error prone matrix above

#Find in inverse of the matrix A1
InverseA1 <- solve(A1)

#To check if inverse is accurate, multiply inverse by the original matrix to get the identity matrix
CheckA1 <- round(A1 %*% InverseA1)

#since the above check result in an identity matrix the inverse is correctly calculated

#Find the determinant of matrix A1 above
detA1 <- print(det(A1))


#same logic used for question 1b 
#Question 1b.
B<-matrix(1:1000, nrow=10)

#The matrix above will definitely fail since it is not a square matrix.
#We can modify the matrix a bit to make it work, 
#Here we create a matrix with random numbers between 1 and 20 to fill a matrix of 10,000 elements
#creating a 100x100 matrix
B1<-matrix(sample(1:20,10000, replace=T),nrow=100)

#Find the inverse of the matrix B1
InverseB1 <- solve(B1)

#Verify by multiplying the inverse by the original matrix to produce the identity matrix
CheckB1 <- round(B1 %*% InverseB1)

