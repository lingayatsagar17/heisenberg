newiris<-iris
newiris$Species<-NULL
kc<-kmeans (newiris,3)
table(iris$species,kc$cluster)
plot(newiris[c("Sepal.Length","Sepal.Width")],col=kc$cluster)
point(kc$centers[,c("Sepal.Length","Sepal.Width")],col=1:3,pch=8,cex=2
png(file="C:\TYIT_52\kmeans2.png")