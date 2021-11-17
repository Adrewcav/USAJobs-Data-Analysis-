##Step 1
request <- "request"
host <- "data.usajobs.gov"
useragent <- "andrew.s.cavalier@gmail.com"
authkey <- "uXTweQ1qjpAa+7IRt/z55lNF+Ao+1auY8jh1ZqVSD4s="

base_url <- "https://data.usajobs.gov/api/search?PositionTitle=Psychologist"

call1 <- paste(base_url)
call1

##Step 2
get_jobs <- GET(call1,request,host,useragent,authkey, type = "basic")

get_jobs

##Step3
get_jobs_text <-content(get_jobs, "text")

get_jobs 
