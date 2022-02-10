N=1000000
result = matrix(0,N,1)
###3 White, 4 Green, 5 Red
###c() gets the output by giving parameters inside the function c(row,column)
###rep(1,3) => 1 1 1
dat = c(rep(1,3), rep(2,3), rep(3,3))
dat_S = matrix(0,N,3)
for (i in 1:N) {
  temp = sample(dat, 3, replace = FALSE)
  dat_S[i, ] = temp
  #number of White balls
  W_num = sum(temp == 1)
  #number of Red balls
  R_num = sum(temp == 3)
  if ((W_num == 2) & (R_num == 1)) {
    result[i,1] = 1
  }
}
print(sum(result)/1000000)