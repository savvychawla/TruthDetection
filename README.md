# TruthDetection
This repo contains visualisation of top 12 (by volume) USA political statements' truthfulness from Politifact.com. 

Tools/Languages used are Microsoft Excel, SQL, R.

## View the visualisation [here](https://savvychawla.github.io/TruthDetection).

## Context and Methodology
The dataset was obtained by parsing statements and their veracity verdict from Politifact.com. Contains 14k affirmations up till late 2020.

Used the binary version of the data to filter out top 12 (by volume) statements from media/person using SQL/BigQuery.

Using Microsoft Excel, converted the data into matrix format supported by the R library: chorddiag.

Using RStudio: 

• Installed necessary libraries for chorddiag package.

• Passed the matrix into a variable.

• Labelled the group name and passed into a variable.

• Set the dimension names.

• Created the visualisation with the chordiag library and customised the chart according to requirement.

• Used the htmlwidgets library to export the visualisation into html file. 

## Content of dataset
There are 4 columns in politifact.csv: statement, source, link, veracity.

statement - statement made by celebrity or politician

source - can be a person, but not necessarily.

link - URL of affirmation.

veracity - degree of truthfulness given by the Politifact.com team.

Other variants have certain classes removed and are binarized (the one used for the visualisation in this repo).

## Acknowledgements
Initial Source: www.politifact.com

GitHub Repo Link for more context: https://github.com/the-sergiu/TruthDetection
