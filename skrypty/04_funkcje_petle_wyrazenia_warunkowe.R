library(tidyverse)

#Tworzenie funkcji ----

stopnie <- sample(1:360, 50)

#przeliczanie stopni do radianów
stopnie_do_rad <- function(x) {
  (x * pi)/180
}

#Zadanie: stwórz wektor o długości 50 zawierający miary kątów w radianach (zakres od 0 do 2*pi) korzystając z funcji seq(). Następnie stwórz funkcję, która przelicza wartości z radianów do stopni

#Zastosowanie pętli ----

xyz <- tibble(
  x = sample(1:10, 5),
  y = sample(1:10, 5),
  z = sample(1:10, 5)
)

mean(xyz$x)
mean(xyz$y)
mean(xyz$z)

mean_along <- vector("numeric", ncol(xyz))

for (i in 1:3) {
  mean_along[i] <- mean(xyz[[i]])
}

mean_along

#Zadanie: stwórz ramkę danych o wymiarach 10x5 zawierającą dane liczbowe. Następnie, korzystając z pętli for oblicz dla każdej kolumny medianę

#Wyrażenia warunkowe -----

srednica1 <- 500
srednica2 <- 44
srednica3 <- 0.5

if (srednica1 > 63) {
  "piasek"
}

if (srednica2 > 63) {
  "piasek"
}

if (srednica2 > 63) {
  "piasek"
} else {
  "pył"
}

if (srednica1 > 63) {
  "piasek"
} else {
  "pył"
}

if (srednica3 > 63) {
  "piasek"
} else if (srednica3 > 1) {
  "pył"
} else {
  "ił"
}

#zastosowanie wyrażeń warunkowych z pętlą

srednice_ziarna <- sample(c(sample(seq(0.01, 0.99, length.out = 100), 5),
                     sample(1:63, 4),
                     sample(64:2000, 3),
                     3500))
uziarnienie <- vector("character", length(srednice_ziarna))

for (i in seq_along(srednice_ziarna)) {
  uziarnienie[[i]] = if (srednice_ziarna[[i]] > 2000) {
    "żwir"
  } else if (srednice_ziarna[[i]] > 63 & srednice_ziarna[[i]] < 2000) {
    "piasek"
  } else if (srednice_ziarna[[i]] > 1 & srednice_ziarna[[i]] < 63) {
    "pył"
  } else {
    "ił"
  }
}

uziarnienie