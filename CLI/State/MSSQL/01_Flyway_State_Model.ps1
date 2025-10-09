# Variables #
$ARTIFACT_FILENAME = "%temp%/Artifacts/Flyway.State.Development.differences-$(get-date -f yyyyMMdd).zip"
$WORKING_DIRECTORY = "C:\WorkingFolders\FWD\State_Based_Projects\MSSQL_State" 

flyway model `
"-model.artifactFilename=$ARTIFACT_FILENAME" `
-workingDirectory="$WORKING_DIRECTORY"