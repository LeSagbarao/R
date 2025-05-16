##fichier de script simple conteatnt des expressions 
## R pour faire des calculs et créer des objets
2 + 3

## probabilité d'une loi de poisson
x <- 7
10^x * exp(-10) / factorial(x)

## petite fonction qui fait un calcul trivial
f <- function(x) x^2

## Evaluation de la fonction
f(2)

##générer deux vecteurs de nombres pseudo aléatoires
## issus d'une loi normale cetrale centrée réduite
x <- rnorm(50)
y <- rnorm(x)

##graphique des couples (x, y)
plot(x, y)
##graphique d'une approximation de la densité du vecteur x
plot(density(x))

###générer la suite 1, 2, 3 ... 10
1:10

#la fonction seq sert à générerdes suites plus générales
seq(from = -5, to = 10, by = 3)
seq(from = -5, length =10)

###La fonction rep sert à répéter des valeurs
rep(1, 5)         #répéter 1 cinq fois
rep(1:5, 5)       # répéter le vecteur 1,...,5 cinq fois
rep(1:5, each = 5)# répéter chq élémént du vecteur cinq fois

## arithmétique vectorielle
x <- 1:12        ##initialisation d'un vecteur
x
x + 2 #additionner 2 à chq élt
x*-12:-1 ##produit élt par élt
x + 1:3 #le vecteur le plus court est recyclé

##vecteur de nombres uniformes sur l'intervalle [1, 10]
x <- runif(12, min=1, max=10)
x
##pour afficher le résultat d'une affectation, 
##placer la commandeetre parenthèse
(x <- runif(12, min=1, max=10))
(x <- round(x))

##Créer un matrice 3x4 à partir des valeurs de v.
##Remarquer que la matrice est remplie par colonne.
(m <- matrix(x, nrow = 3, ncol= 4))

##Opérations arithmétiques de base s'appliquent 
## aux matrices comme aux vecteurs.
m+2
m*2
m^2

##Elimier la quatrième colonne afin d'obtenir une
## une matrice carrée.
(m <- m[, -4])

##Transposée et inverse de la matrice
t(m)
solve(m)

##Produit matriciel
m%*%m  #produit de m avec elle-même
m%*%solve(m) #produit de m avec son inverse
round(m%*%solve(m)) ##l'arrondi donne la matrice identité 

##Consulter la rubrique d'aide de la fonction 'solve'
?solve

##Liste des objets dans l'espace de travail.
ls()
save.image()
