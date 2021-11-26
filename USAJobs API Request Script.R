##Step 1 Install packages

install.packages("httr")
require("httr")

install.packages("jsonlite")
require("jsonlite")

install.packages("writexl")
library("writexl")

##Step 2 
# Make an API Call to USAJobs API.
# Request must include 3 Parameters: Host, User-Agent, Authorization-Key.
# Note Authorization Key is requested from the data.usajobs.gov site. 
# ResultsPerPage=500 returns max results.

host <- "data.usajobs.gov"
useragent <- "andrew.s.cavalier@gmail.com"
authkey <- "authkey"

base_url <- "https://data.usajobs.gov/api/Search?PositionTitle=Scientist&ResultsPerPage=500"

call1 <- paste(base_url)
call1

##Step 3

get_job <- httr::GET(base_url, httr::add_headers("Host"=host, "Authorization-Key"=authkey, "User-Agent"=useragent))

get_job

##Step4
#Start Deserialization Process

get_job_text <-content(get_job, "text")

get_job_text

##Step 5
#Convert to JSON format and parse the JSON using jsonlite package

get_job_json <- fromJSON(get_job_text, flatten = TRUE)

View(get_job_json)

##Step 6 
## Data can now be viewed: get_job_json -> Search Result -> Search Result Items
## Export data into Excel Spreadsheet

write_xlsx(get_job_json[["SearchResult"]][["SearchResultItems"]],"/Users/andrew/Desktop/Data1.xlsx")

