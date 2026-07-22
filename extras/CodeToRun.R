library(FeasibilityENLTN)
# start by 
renv::restore()
# Maximum number of cores to be used:
maxCores <- parallel::detectCores()

# The folder where the study intermediate and result files will be written:
outputFolder <- "D:/studyResults/FeasibilityENLTN"

# Optional: specify where the temporary files (used by the Andromeda package) will be created:
options(andromedaTempFolder = file.path(outputFolder, "andromedaTemp"))
# if you need the JDBC connector driver use:
DatabaseConnector::downloadJdbcDrivers(dbms = 'dbms', path = PathToDriver)

# Details for connecting to the server:
connectionDetails <-
  DatabaseConnector::createConnectionDetails(
    dbms = "<dbms>",
    server =  "<server>",
    user = "<user>",
    password = "<password>",
    port = <port>,
    pathToDriver = '<path to driver>'
  )

# The name of the database schema where the CDM data can be found:
cdmDatabaseSchema <-  "<cdm_database_schema>"

# The name of the database schema and table where the study-specific cohorts will be instantiated:
# you should have read/write/ drop access to this schema
cohortDatabaseSchema <- "<cohort_database_schema>"
cohortTable <- "<cohort_table>"

# Some meta-information that will be used by the export function:
databaseId <-"<database_id>" # short string for the database
databaseName <- "<database_name>" # descriptive name for the database
databaseDescription <- "<database_description>" # description of the database

# For some database platforms (e.g. Oracle): define a schema that can be used to emulate temp tables:
options(sqlRenderTempEmulationSchema = NULL)

FeasibilityENLTN::execute(
  connectionDetails = connectionDetails,
  cdmDatabaseSchema = cdmDatabaseSchema,
  cohortDatabaseSchema = cohortDatabaseSchema,
  cohortTable = cohortTable,
  verifyDependencies = FALSE,
  outputFolder = outputFolder,
  databaseId = databaseId,
  databaseName = databaseName,
  databaseDescription = databaseDescription
)
 
