# Fleet Fuel Efficiency Analysis

This project analyzes fleet inventory, miles driven, and fuel consumption data for a fictional Element Fleet Management client. The objective is to evaluate vehicle fuel efficiency across the fleet and identify trends that could help improve fuel performance.

The project uses Excel, SQL, and Tableau to transform raw fleet data into an analytical dataset and an interactive dashboard.



## Project Objective:

The goal of this analysis was to answer the following questions:

- How has fleet fuel efficiency changed over time?

- Which vehicle models perform best and worst in terms of MPG?

- Is there a relationship between miles driven and fuel consumption?

- What insights could support improvements in fleet fuel efficiency



## Dashboard Preview:

![Fleet Fuel Efficiency Dashboard](images/dashboard.JPG)

The dashboard highlights key fleet metrics and allows users to explore fuel efficiency by vehicle model and year.



##  Tools Used:

- Excel – reviewing and organizing the raw dataset

- MySQL – transforming the data and creating a master analysis table

- Tableau – building the interactive dashboard and visualizations


## Data Preparation

- The original dataset included separate tables for vehicle inventory, miles driven, and gallons purchased.

- A SQL script was used to combine these datasets into a single master table used for analysis and dashboard development.

- The SQL script used to generate this dataset can be found in:

    - sql/master_table_element_analysis.sql



## Key elements of the dashboard include:

- Total Miles Driven

- Total Gallons Purchased

- Total Vehicles

- Average MPG

- MPG trends over time

- Vehicle performance comparison



## Key Insights:

- Fleet fuel efficiency improved over time, increasing from roughly 16 MPG to over 22 MPG.

- The Ford Taurus showed the highest average MPG among vehicles analyzed.

- The Dodge Grand Caravan showed the lowest fuel efficiency.

- A clear relationship exists between miles driven and gallons purchased, reflecting expected fuel consumption patterns.

- Vehicle selection has a noticeable impact on overall fleet fuel performance.



## Repository Structure

FLEET-FUEL-EFFICIENCY-ANALYSIS
│
├── dashboard
│   └── fuel_efficiency_dashboard.twb
│
├── data
│   ├── raw
│   │   └── fuel_case_study_raw.xlsx
│   └── cleaned
│       └── fuel_case_study_master_table.xlsx
│
├── images
│   └── dashboard.JPG
│
├── sql
│   └── master_table_element_analysis.sql
│
└── README.md



## Project Context

This project was originally completed as part of a data analytics interview case study. It demonstrates skills in:

- data preparation

- SQL data transformation

- dashboard development

- communicating analytical insights
