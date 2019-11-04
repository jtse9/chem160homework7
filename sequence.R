n<-53L
while (n != 1) {
  cat(n,"\n")
  if (n%%2==0) {
    n<-as.integer(n/2)
  } else {
    n<-as.integer(n+7)
  }
}
