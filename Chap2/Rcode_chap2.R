
#============================================#
#       R code for chapter 2
#============================================#

x=c(-2,1,5,-4,0,3); plot(x)

plot(x, type="l")

plot(x,type="l", col="red",lwd=2, xlab="axes des abscisses", 
     ylab="axes des ordonnées", main="Mon premier graphique", 
     ylim=c(-6,6))
points(x,col=1:6,pch=1:6,lwd=3)
legend("topleft", "Courbe", text.col=2, lty=1)


xx=seq(-2*pi, 2*pi, len=100); yy= sin(xx)
par(mar=c(5,4,1.5,2))
plot(xx,yy,type="l",xlab="x", ylab=expression(sin(x)), 
     col=2, lwd=3)
curve(cos, -2*pi, 2*pi, col=4, lwd=3, lty=2, add=T)
legend("bottomleft",c("sin", "cos"), lty=c(1,2), col=c(2,4), 
       lwd=3,bty="n")

par(font=2, mar=c(0.5,0,0,0))
y=rev(c(rep(1,6),rep(2,5), rep(3,5), rep(4,5), rep(5,5)))
x=c(rep(1:5,5),6)
plot(x, y, pch = 0:25, cex=1.5, ylim=c(1,5.5), xlim=c(1,6.5), 
     axes=FALSE, xlab="", ylab="", bg="blue")
text(x, y, labels=0:25, pos=3)


par(font=2, mar=c(0,0,0,0))
plot(1, pch="", ylim=c(0,6), xlim=c(0,0.7),  axes=FALSE,xlab="", ylab="")
for(i in 0:6) lines(c(0.3,0.7), c(i,i), lty=i, lwd=3)
text(rep(0.1,6), 0:6, labels=c("0.'blank'", "1.'solid'", "2.'dashed'", "3.'dotted'",
                               "4.'dotdash'", "5.'longdash'", "6.'twodash'"))

par(mar=c(4,4,.1,1))
x1=cos(seq(0,pi,len=60)); plot(x1,type="n", xlab="", ylab="")
text(12, x1[12], "Bonjour", col=2); text(40, x1[40], "Hello", col=4)
text(50,0.5, expression(hat(beta)))

install.packages("ggplot2")
library("ggplot2")

x=seq(-pi, pi, len=100)
y=sin(x); dd=data.frame(x,y)
p=ggplot(dd,aes(x,y))+geom_line()
p

p=p+geom_line(linewidth=1.2, colour="blue")+ ggtitle("Titre")
p

p=p+theme(plot.title = element_text(hjust = 0.5, size=20,
                  color="darkred"))+labs(x="",y="")
p

RF=c(348,163,71,54,161,41)
namess=c("TVA","IR","IS","TPP","AI","RNF")
barplot(RF, names.arg=namess, col="blue", ylim = c(0,350))


barplot(RF, names.arg=namess, col="blue", horiz = T, xlim = c(0,350) )

cyl=factor(mtcars$cyl)
am=factor(mtcars$am, labels = c("Auto", "Manuel"))
tab=table(am, cyl);barplot(tab, col=c("lightblue","blue2"))
legend("top", c("Auto","Manuel"), fill=c("lightblue","blue2"), box.lty = 0)

barplot(tab, col=c("lightblue","blue2"), beside=T)
legend("top", c("Auto","Manuel"), fill=c("lightblue","blue2"), box.lty = 0)


pie(RF, namess, col=rainbow(length(RF)))


plotrix::pie3D(RF, labels=namess, explode=0.1)

barplot(table(mtcars$cyl), col="blue2")

hist(mtcars$mpg, col=6,probability = T )
lines(density(mtcars$mpg), lwd=3)

boxplot(mtcars$mpg, col=5)

boxplot(mpg ~ cyl , data=mtcars, col=5, notch=T, horizontal = T)

(t1=table(mtcars$cyl)) # absolues
t1/sum(t1)             # relatives
(t2=table(mtcars$cyl, mtcars$gear )); t2/sum(t2)

summary(mtcars$mpg)
pastecs::stat.desc(mtcars$mpg, norm=T, basic=F )


