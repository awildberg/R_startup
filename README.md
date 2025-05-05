# R_startup

add to `~/.Rprofile` to load on startup

## colorout

from https://github.com/jalvesaq/colorout

R CMD INSTALL colorout

## drop_na

decide if dropping rows with *any* NA or *all* NA

## convSuffix

converts m/k/g in number-string-vectors to full numbers, e.g. 323.4k to 323400

## isCastableNumeric

checks vectors if they can be cast to a numeric, no warnings printed. Can output the vector too.

## rollMean

rolling mean/median etc with several mods e.g. partial to get a full list without NA.

## smartAgg

by https://github.com/brooksandrew

extends `aggregate` to work on several columns with several functions.

## cbind.fill

cbind uneven matrices or DFs

<hr>

# Julia startup

add to `~/.julia/config/startup.jl`

## tableprop

summarise Vectors and return values, counts and proportions

## sample_rng

sample function with replace=true/false

## fillmissing

fills missing values in Vectors with either previous (:up) or following (:down) non-missing value
