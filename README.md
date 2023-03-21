# Crowdfunding-ETL

#### This repository contains code for an ETL process and data analysis of a crowdfunding dataset for Independent Funding. In this project, Python, Pandas, and Jupyter notebooks are used to perform the extract and transform phases of ETL. The dataset consists of information about backers who pledged to live projects.

# The project consists of four technical analysis deliverables:

## Deliverable 1: Extract Data
In this deliverable, the raw data was extracted and added to a DataFrame for the transform phase. The backer_info.csv file was imported into a DataFrame using Python dictionary methods.

## Deliverable 2: Transform and Clean Data
In this deliverable, the data was transformed via formatting, splitting, converting data types, and restructuring to create a DataFrame that can be loaded into a postgreSQL database as a CSV file. The "cf_id" column was converted to int64 data type if necessary. The "name" column was split into first and last names and added to "first_name" and the "last_name" columns, respectively, in the DataFrame. The "name" column was then dropped in the DataFrame.

## Deliverable 3: Create an ERD and a Table Schema and Load the Data
In this deliverable, the ERD was created based on the summary information about the backers.csv dataset. A backers table was created using the information from the backers.csv file. The table was saved in a PostgreSQL file named crowdfunding_db_schema.sql. The schema for the backers table and the ALTER TABLE statement to add the foreign key constraint were copied from the file and pasted in the pgAdmin query editor and then run. The backers.csv file was then uploaded into the backers table.

## Deliverable 4: SQL Analysis
In this deliverable, SQL queries were used to analyze the data in the crowdfunding_db database.

# Files:
## The files in this repository are:

backer_info.csv: contains the raw data
Extract-Transform_final_code.ipynb: contains code for the extract and transform phases of ETL
backers.csv: contains the transformed data
crowdfunding_db_ERD.png: an image file of the ERD for the crowdfunding database
crowdfunding_db_relationships.png: an image file of the relationships in the crowdfunding database
crowdfunding_db_schema.sql: contains the schema for the crowdfunding database
SQL_Challenge.ipynb: contains the SQL queries for analyzing the data in the crowdfunding_db database
