FeasibilityENLTN
==============================


Requirements
============

- A database in [Common Data Model version 5](https://github.com/OHDSI/CommonDataModel) in one of these platforms: SQL Server, Oracle, PostgreSQL, IBM Netezza, Apache Impala, Amazon RedShift, Google BigQuery, or Microsoft APS.
- R version 4.0.0 or newer
- On Windows: [RTools](http://cran.r-project.org/bin/windows/Rtools/)
- [Java](http://java.com)
- 25 GB of free disk space

How to run
==========
1. Follow [these instructions](https://ohdsi.github.io/Hades/rSetup.html) for setting up your R environment, including RTools and Java. 

2. Open your study package in RStudio. Use the following code to install all the dependencies:

	```r
	renv::restore()
	```

3. In RStudio, select 'Build' then 'Install and Restart' to build the package.

3. Once installed, you can execute the study by running the code provided under `extras/CodeToRun.R`:
 	
4. To view the results, use the Shiny app:

	```r
	launchDiagnosticsExplorer()
	```
  
  Note that you can save plots from within the Shiny app. 

License
=======
The FeasibilityENLTN package is licensed under Apache License 2.0

Development
===========
FeasibilityENLTN was developed in ATLAS and R Studio.

### Development status

Done
