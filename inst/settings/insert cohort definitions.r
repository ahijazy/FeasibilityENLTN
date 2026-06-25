library(ROhdsiWebApi)

baseUrl <-"https://atlas.odysseusinc.com/WebAPI"

token <- 'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJheW1hbl9oaWphenlAZXBhbS5jb20iLCJTZXNzaW9uLUlEIjoiZWNiOGZlYjMtZWFmNy00MTI4LTk1NGItNzA1OWFjNGNiZjY4IiwiZXhwIjoxNzkxMzk4MzI4fQ.I7kMC04SqdSUNO1bCmZJrEJovFp09kzH6Gp_BNxg5RqOqNBw0jnD-ezYVkX19mhWcyf7PLIrQs0CeCSGg2PVMQ'
setAuthHeader(baseUrl = baseUrl, token)

# after inserting the cohorts
 
# Insert cohort definitions from ATLAS into package -----------------------
ROhdsiWebApi::insertCohortDefinitionSetInPackage(fileName = "inst/settings/CohortsToCreate.csv",
baseUrl = baseUrl ,
insertTableSql = TRUE,
insertCohortCreationR = TRUE,
generateStats = FALSE,
packageName = "FeasibilityENLTN")