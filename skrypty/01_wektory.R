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

#nazwy obiektów
x <- "dobrze jeśli obiekt ma taką nazwę, że jesteśmy w stanie powiedzieć, jakie dane zawiera"
nazwy_obiektow_nie_powinny_byc_jednak_za_dlugie_bo_ciezko_wykonuje_sie_pozniej_na_nich_operacje <- 1
nazwy_obiektow_nie_moga_zawierac_znakow_specjalnych_ani_spacji <- "ale ich zawartość może!"
10nie_mozna_tez_zaczynac_od_liczby
DobrzeJestPrzyjacJakasKonwencjeZapisu_aNie_mieszac_STYLE <- 12

#nazwy plików też powinny wskazywac na ich zawartosc, czyli np. staramy sie nie zapisywac plikow jako "kod.csv" albo "xyzq.R"; unikamy jednoczesnie znakow dialrytycznych, znakow specjalnych i spacji; przydaje sie tez nadac numer na poczatku nazwy, jesli mamy jakas ustalona kolejnosc wykonywania analiz

#wykorzystanie funkcji dla wektorów

x_norm <- seq(from = -4, to = 4, length.out = 100)
x_norm
?seq
x_norm <- seq(-4, 4, length.out = 100) #co się stanie, jeśli nie wpiszemy nazwy argumentu length.out?
y_norm <- dnorm(x_norm)

plot(x_norm, y_norm, type = "l")

#Zadanie: stwórz wektor atomowy o dowolnej nazwie zawierający ciąg liczb w zakresie -100 do 100 z odstępem co 5. Do zadania skorzystaj z pomocy dla funkcji seq()

#Zadanie: stwórz wektor zawierający 10 elementów literowych. Zastosuj funkcję sample(), dla wylosowania jednego z nich.

#filtrowanie danych
litery <- letters

litery[4]
litery["d"]
litery[litery == "d"]
moje_ulubione_litery <- c("k", "z")
litery[litery %in% moje_ulubione_litery]

cyfry <- 1:9

cyfry[3]
cyfry[cyfry > 3]
cyfry[cyfry/2 == 2]

c(litery, cyfry)