# data-analytics-portfolio
Portfolio showcasing my data analytics projects, including Cyclistic and Bellabeat case studies

# Cyclistic Bike-Share Analysis

## Overview
This project explores the usage patterns of Cyclistic's bike-share program. The analysis focuses on understanding the differences between casual riders and annual members based on data from the Divvy bike-share program. The goal is to develop marketing strategies to convert casual riders into annual members.

## Business Question
- **How do annual members and casual riders use Cyclistic bikes differently?**

## Data Source
The data used for this analysis is the **Divvy trip data**, publicly available through **Motivate International Inc.** The dataset includes information about bike trips taken over the past 12 months.

## Methodology
- Data was cleaned and processed in **R** using packages such as **tidyverse** and **ggplot2**.
- Key metrics like **ride length**, **ride frequency**, and **day of the week** were analyzed to compare casual and annual riders.
- Visualizations were created to help answer the business question.

## Key Findings
1. **Casual Riders**: Tend to use bikes more frequently on weekends and for longer durations.
2. **Annual Members**: Have more consistent usage patterns throughout the week.
3. **Marketing Opportunities**: There is a clear opportunity to promote **annual memberships** during weekends and to **target high-traffic bike stations** for membership promotions.

## Recommendations
1. Promote annual memberships during weekends when casual riders are more active.
2. Focus marketing campaigns on high-traffic stations.
3. Use digital marketing to highlight the benefits of annual memberships to casual riders.

## Files Included
- **Data**: Raw Divvy trip data CSV files.
- **Code**: R script for data cleaning and analysis (`cyclistic_analysis.R`).
- **Visualizations**: Key plots such as `avg_ride_length.png` and `rides_by_day.png`.
- **Report**: A summary of findings and recommendations.

## Installation
To run this analysis locally, clone the repository and ensure you have the following packages installed:
```r
install.packages("tidyverse")
install.packages("ggplot2")

