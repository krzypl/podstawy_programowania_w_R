#R jako kalkulator
1 + 1 #nacisnij ctr + enter, zeby wyswietlic wynik
4 * 15
2^2
pi + 1
(1 + 1) * (3 + 8) * 11

#jakie jeszcze pomysły na działania?

#tworzenie obiektow
#wektory
x <- 1 + 1 # znak "<-" przypisuje wyrazenie po jego prawej stronie do obiektu, ktorego nazwa poprzedza znak. Sam obiekt pojawia sie w panelu "Environment", w gornym prawym oknie
y <- 3 + 8
z <- 11
xy <- "a"

#działania na obiektach
x * y * z
sqrt(x)
log(y)
pi * xy

#wektory z wieloma obserwacjami
x0 <- c(1, 2, 15, 22, 1)
y <- c(3, 8, 9, "geologia")
y2 <- c(45, 3, geologia)

x0 + y

z <- c("geologia", "jest", "fajna")
z <- c("geologia jest fajna")

y + z

xx <- c(1, 2)
xxx <- c(x, xx)

x0 + xx

x100 <- rnorm(n = 100, mean = 50, sd = 5)
?rnorm


#nazwy obiektów
x <- "dobrze jeśli obiekt ma taką nazwę, że jesteśmy w stanie powiedzieć, jakie dane zawiera"
nazwy_obiektow_nie_powinny_byc_jednak_za_dlugie_bo_ciezko_wykonuje_sie_pozniej_na_nich_operacje <- 1
nazwy_obiektow_nie_moga_zawierac_znakow_specjalnych_ani_spacji <- "ale ich zawartość może!"
10nie_mozna_tez_zaczynac_od_liczby
DobrzeJestPrzyjacJakasKonwencjeZapisu_aNie_mieszac_STYLE <- 12

#nazwy plików też powinny wskazywac na ich zawartosc, czyli np. staramy sie nie zapisywac plikow jako "kod.csv" albo "xyzq.R"; unikamy jednoczesnie znakow dialrytycznych, znakow specjalnych i spacji; przydaje sie tez nadac numer na poczatku nazwy, jesli mamy jakas ustalona kolejnosc wykonywania analiz



#obiekty złożone
#macierze (matrix)
macierz1 = matrix(1:12, nrow = 4, ncol = 3)
macierz1 + 1
macierz2 <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,"a"), nrow = 4, ncol = 3)
macierz2 + 1
macierz3 <- macierz1
macierz1 + macierz3
macierz1[1,2]
macierz3[1,]
macierz1[c(1, 2),]
macierz1[macierz1 > 8]

#jak stworzyć wykres zestawiajacy obserwacje z kolumny 1 i 2 macierz1? Jak dla wierszy 2 i 3?

#ramka danych (data.frame; tibble)
x <- data.frame(a = c(1,2,3), b = c(4,5,6), c = c("a", "b", "c"))
x <- data.frame(a = c(1,2,3), b = c(4,5,6), c = c("a", "b", "c", "d"))

x$a

View(x)

x$a[2]

y <- data.frame(a = c(4,5,6), b = c(4,4,3), c = c("a", "b", "c"))

#stwórz wykres zestawiajacy ze soba dane z kolumny a i b ramki danych y
#stworz wykres liniowy zestawiajacy ze soba dane z kolumny a ramki danej x i y; podpowiedz - zwróc uwagę na parametr "type" w oknie pomocy plot()

y1 <- y[,-3]
x1 <- x[,-3]

x1 + y1

x + 1
x1 + 1

sqrt(x1)

#listy

x <- list(a = c(1,2,3), b = c("a", "b"))
y <- list(v = list(a = c(56, 4, 12), n = "z"), b = "B")

y$v$a[1]