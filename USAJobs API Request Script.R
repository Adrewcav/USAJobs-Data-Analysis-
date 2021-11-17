##Step 1

install.packages("httr")
require("httr")

install.packages("jsonlite")
require("jsonlite")

##Step 2 
## Request must include 3 Parameters: Host, User Agent, Authorization Key

request <- "request"
host <- "data.usajobs.gov"
useragent <- "andrew.s.cavalier@gmail.com"
authkey <- "uXTweQ1qjpAa+7IRt/z55lNF+Ao+1auY8jh1ZqVSD4s="

base_url <- "https://data.usajobs.gov/api/search?PositionTitle=Psychologist"

call1 <- paste(base_url)
call1

##Step 3

get_jobs <- GET(call1, query=list(api_key=authkey,host,useragent))

get_jobs

##Step4

get_jobs_text <-content(get_jobs, "text")

get_jobs 
