# quick hit on nfl draft

library(nflreadr)
library(readr)
library(dplyr)
library(cfbfastR)

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

inout <- "
Trey Adams, out
Hunter Bryant, out
Curtis Weaver, in
Brandon Wimbush, out
Jonathan Garvin, out
Trevon Hill, out
Jeff Thomas, out
Amik Robertson, out
Justin Madubuike, out
Chuba Hubbard, in
A.J. Epenesa, in
Tristan Wirfs, in
Mekhi Becton, out
Cameron Dantzler, out
CJ Henderson, out
Brandon Aiyuk, out
Cam Akers, out
Jaylon Johnson, out
Zack Moss, in
Trevon Diggs, out
Terrell Lewis, out
Jerry Jeudy, in
Alex Leatherwood, in
Henry Ruggs III, in
Kamal Martin, out
Derrick Brown, in
Tyler Biadasz, in
Jonathan Taylor, in
Justin Herbert, in
Andrew Thomas, out
D'Andre Swift, in
AJ Dillon, out
"


sitoutDF <- read.csv(
  text=inout,
  col.names = c("names", "status"),
  header=F
)


D.draft %>%
  inner_join(
    sitoutDF,
    by = c("pfr_name" = "names")
  ) %>%
  print(n=40)


z <- D.season %>%
  right_join(
    mainData,
    by = c("full_name" = "name")
  ) %>%
  arrange(full_name) %>%
  print(n=40) %>%
  select(
    full_name,
    overall,
    team,
    nfl_team,
    college_team,
    status.x,
    status.y,
    position.x,
    position.y
    
  )



# next questions:

# 1. Did their team win/lose their bowl game?
# 2. Did comparable players (those drafted around the same time) win their bowl games?



draft.2020 <- cfbd_draft_picks(year=2020)

mainData <- draft.2020 %>%
  right_join(
    sitoutDF,
    by = c("name" = "names")
  ) %>%
  select(
    name,
    overall,
    nfl_team,
    college_team,
    status,
    position
  )

# of those who were not drafted:
# - 5 didnt play
# - 3 did (all 3 false negatives)


