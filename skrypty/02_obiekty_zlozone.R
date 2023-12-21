#obiekty złożone ----
install.packages("tidyverse")
library(tidyverse)

#macierze (matrix) ----
macierz1 <- matrix(1:12, nrow = 4, ncol = 3)
macierz1
macierz1 + 1
macierz2 <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,"a"), nrow = 4, ncol = 3)
macierz2
macierz2 + 1
macierz3 <- macierz1
macierz1 + macierz3
macierz1[1,2]
macierz3[1,]
macierz1[c(1, 2),]
macierz1[macierz1 > 8]
macierz4 <- matrix(3:14, nrow = 4, ncol = 3)
macierz1[macierz4 > 8]
macierz5 <- cbind(macierz1, 1:4)
macierz6 <- rbind(macierz1, 1:3)

## zadanie: stworz macierz liczbową o wymiarach 6:6. Nastepnie:
# - wyodrębnij obserwację z trzeciego wiersza drugiej kolumny,
# - wyodrębnij wszystkie obserwacje z 3 wiersza
# - wyodrębnij wszystkie obserwacje o wartości poniżej 3
# - oblicz średnią z wykorzystaniem funkkcji mean()


#ramka danych (data.frame; tibble) ----
x <- data.frame(a = c(1,2,3), b = c(4,5,6), c = c("a", "b", "c"))
x
x <- data.frame(a = c(1,2,3), b = c(4,5,6), c = c("a", "b", "c", "d"))
class(x)

x$a

View(x)

x$a[2]

y <- tibble(d = c(4,5,6), e = c(4,4,3), z = c("a", "b", "c"))
y
class(y)

xy <- cbind(x, y)

y1 <- y[,-3]
y1
x1 <- x[,-3]
x1

x1 + y1

sqrt(x1)

names(x) <- c("pierwsza", "druga", "trzecia")
x

##Zadanie: stwórz ramkę danych z 4 kolumnami, dwoma liczbowymi i dwoma znakowymi. Kolumny znakowe nazwij "kolumna1" i "kolumna2". Następnie
# - uporządkuj obserwacje w jednej z kolumn liczbowych od największej do najmniejszej z wykorzystaniem funkcji sort()
# - stwórz wektor znakowy, za pomocą którego wyodrębnisz kolumny znakowe

#listy ----

x <- list(a = c(1,2,3), b = c("a", "b"))
x
y <- list(v = list(a = c(56, 4, 12), n = "z"), b = "B") 
y

y[1]
y[[1]]

y$v$a[1]

##zadanie: stwórz listę zawierajacą cztery obiekty różnej wielkości, a następnie usuń dwa z nich.
