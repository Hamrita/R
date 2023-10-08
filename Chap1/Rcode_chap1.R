
#==============================================#
#         R code for chap1                     #
#==============================================#

getwd()  # le repertoire de travail courant

setwd("file")  # changer le repertoire de travail

# ceci est un commentaire

# opérateurs: +, -, *, ^ (**), %/%, %%

# opérations matricielles: %*%, solve(), as.vector(), det(), t()
5%/%3  # division euclidienne
5%%3   # modulo; le reste de la division euclidienne
cos(pi/3)
## Saisie des données
XX<-c("M","M","D","C","C","M",rep("C",3),
      "M","C","M","V","M","V","D",rep("C",3),"M")

# Créer un objet x en lui affectant le nombre 2
x<-2
nom<-"Mohamed"
# Créer un objet x et afficher son contenu
(x<-2)

x1<-c(1,-5)  # vecteur numérique
mode(x1)     # afficher le mode de l'objet x1.
x2<-c("Mohamed","Sarah")  # vecteur caractère
x3<-c(1i,1-1i,-2+3i) # vecteur complexe
x4<-c(TRUE,FALSE,T,F)  # vecteur logique

#========================================
# c(), seq(), : ou rep()

x1<-c(1,0,5,-4)  # création d'un vecteur
x1[3]            # extraction du troisième élément de x1
x1[-1]           # afficher tous les éléments de x1 sauf le premier
x1[x1>2]         # extraire les éléments supèrieur à 2.
x1>2             # vecteur logique pour tester si x1>2 ou non.
x11<-c("a","A","b","B")
lettres15<-letters[c(1,5)] # création d'un vecteur contenant la 
# première et la cinquième lettres minuscules
lettres15
LETTRES15<-LETTERS[c(1,5)]  # idem mais majuscules
LETTRES15

seq1<-seq(0,1,by=0.1)  # séquence de 0 à 1 par incrémentation 0.1.
seq1
length(seq1)   # afficher la longueur de seq1
seq2<-seq(0,1,len=5)   # séquence de 0 à 1 de longueur 5.
seq2
seq3<-seq(0,1,len=11)  # même résultat que seq1
seq3

seq<-1:5  # séquence entière de 1 à 5.
seq
seqi<-6:-4
seqi

rep(1,5)
rep(1:3,3)
rep(1:3,each=3)
rep(1:3,each=3,times=2)

rep(1:3,each=2,len=12)
rep(c(0,1,6),times=c(2,5,4))
rep("a",5)

#===================================
#      matrix

matrix(seq(-2,2,len=6),nrow=2,ncol=3)
# la fonction matrix remplie la matrice à créer colonne par colonne.
# Pour faire le remplissage ligne par ligne, on ajoute l'argument byrow=T.
matrix(seq(-2,2,len=6),nrow=2,ncol=3,byrow=T)

age<-c(22,21,24)
poids<-c(64,56,70)
cbind(age,poids)
rbind(age,poids)
M<-cbind(age,poids)
N<-rbind(age,poids)
colnames(M)  # les noms des colonnes
rownames(N)  # les noms des lignes

m1<-matrix(seq(-2,2,len=6),nrow=3,ncol=2)
m1
t(m1)  # la transposée de m1
t(m1)%*%m1 # multiplication matricielle de m1' par m1
det(t(m1)%*%m1) # le déterminant 

solve(t(m1)%*%m1)  # l'inverse.
diag(t(m1)%*%m1)   # la diagonale
diag(c(1,-2,5))    # matrice diagonale
sum(diag((t(m1)%*%m1)))  # la trace d'une matrice

(list1 <- list(size = c(1, 5, 2), user = "Mohamed", new = TRUE))
list1[[1]]   # accéder au premier élément de list1
list1[["size"]] # idem ou encore, list1$size.

# arrondissement à l'entier
xx=c(0.253,2.146,pi,2*pi/3,11.5)
round(xx)     # arrondi à l'entier
round(xx,2)   # arrondi à la seconde décimale
round(xx,-1)  # arrondi aux dizaines
ceiling(xx)   # plus petit entier supérieur
floor(xx)     # plus grand entier inférieur
trunc(xx)     # troncature des décimales

#############################################

outer(X=c(1,-2,3),Y=c(3,2,-4,5),"+")

#==============================================
#   Saisir, importer et exporter des données

jeu1=scan()    # saisir

read.table(); read.csv() # importer

v(xx, "D:/Cours_R/tab.csv")
# enregistrer l'objet xx dans le répertoire D:/Cours_R 
# sous le nom tab avec l'extension .csv

