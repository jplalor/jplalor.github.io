# quick hit on nfl draft

library(nflreadr)
library(readr)
library(dplyr)

D.draft <- load_draft_picks()

D.season <- load_rosters()


sitouts <-"
Eno Benjamin
Nick Coe
Trevon Diggs
Terrell Lewis
Andrew Thomas
Isaiah Wilson
Kamal Martin
Brandon Aiyuk
Cam Akers
Justin Madubuike
Brandon Wimbush
AJ Dillon
Hunter Bryant
Trey Adams
Trevon Hill
Cameron Dantzler
C.J. Henderson
Jonathan Garvin
Deandre Baker
Karan Higdon
Ed Alexander
Justin Layne
Bryce Love
Darrell Henderson
Blake Cashman
Will Grier
Yodny Cajuste
Donnell Greene
Germaine Pratt
Deebo Samuel
Kelvin Harmon
N'Keal Harry
Justice Hill
Rashan Gary
Greedy Williams
Ed Oliver
Noah Fant
"


sitoutDF <- read.csv(
  text=sitouts,
  col.names = c("names"),
  header=F
)


D.draft %>%
  inner_join(
    sitoutDF,
    by = c("pfr_name" = "names")
  ) %>%
  print(n=40)


D.season %>%
  inner_join(
    sitoutDF,
    by = c("full_name" = "names")
  ) %>%
  arrange(full_name) %>%
  print(n=40)



# next questions:

# 1. Did their team win/lose their bowl game?
# 2. Did comparable players (those drafted around the same time) win their bowl games?


