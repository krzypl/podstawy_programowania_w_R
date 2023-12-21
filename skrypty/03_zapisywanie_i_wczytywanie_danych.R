install.packages("tidyverse")
library(tidyverse)
install.packages("readxl")
library(readxl)
install.packages("pangaear")
library(pangaear)

#zapisywanie danych ----


dir.create("dane")

moje_dane_testowe <- tibble(litery = letters,
                            liczby1 = sample(1:100, length(letters)),
                            liczby2 = rnorm(length(letters))
)

write_csv(moje_dane_testowe, "dane/moje_dane_testowe.csv")
write_delim(moje_dane_testowe, "dane/moje_dane_testowe.txt")

moje_dane_testowe2 <- list(litery = letters,
                           liczby1 = 1:10,
                           liczby2 = rnorm(1000))

write_csv(moje_dane_testowe2, "dane/moje_dane_testowe2.csv")

write_rds(moje_dane_testowe2, "dane/moje_dane_testowe2.rds")

#wczytywanie danych z folderu roboczego----
moje_dane_testowe <- read_csv("dane/moje_dane_testowe.csv")
moje_dane_testowe <- read_delim("dane/moje_dane_testowe.txt")

moje_dane_testowe2 <- read_rds("dane/moje_dane_testowe2.rds")

#Zadanie:stwórz ramkę danych poza R i zapisz ja jako plik csv z liczbami dziesiętnymi i przecinkiem jako separatorem dziesiętnym. Następnie wczytaj utworzony plik do R. Skorzystaj z pomocy chatGPT, żeby uzyskać informacji, z jakiej funkcji możesz skorzystać 
#stwórz ramkę danych poza R i zapisz ją w formacie .xlsx, a następnie wczytaj ją do R.

#wczytywanie danych z baz danych na przykładzie Pangei ----
vignette("pangaear")

pang_search <- pg_search(query = 'grain size', bbox = c(-124.2, 41.8, -116.8, 46.1))
pang_raw <- pg_data(doi = pang_search$doi[3])
pang_out <- pang_raw[[1]]$data

View(pang_out)

plot(pang_out$`Depth sed [m]`, pang_out$`Size [µm]`, type = "b")

##Zadanie: wybierz z ramki danych pang_out kolumne z głębokością i średnicą (`Depth sed [m]` oraz `Size [µm]`) i zmień nazwę kolumn kolejno na "Depth" i "Diameter". Utwórz wykres zestawiający zmianę średnicy wraz z głębokością. Następnie zapisz ramkę danych w folderze "dane" nazywajac plik nazwiskiem pierwszego autora i rokiem publikacji
