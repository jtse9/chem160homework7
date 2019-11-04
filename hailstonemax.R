seqlen<-c()
maxval<-c()
for (i in 1:1000) {
n<-i
counter<-1
p<-1
extramax<-0
while (n != 1) {
  if (n%%2==0) {
    n<-as.integer(n/2)
  } else {
    n<-as.integer(n*3+1)
  }
counter<-(counter+1)
if (p < n) {
p <- n
}
}
maxval<-append(maxval,p)
seqlen<-append(seqlen,counter)
}
png("seqlen.png")
plot(seqlen)
dev.off()
png("seqmax.png")
plot(maxval)
dev.off()