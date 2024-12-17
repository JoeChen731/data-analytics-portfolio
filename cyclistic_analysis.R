setwd("C:/LearnCodingLanguage/data-analytics-portfolio/Cyclistic-Bike-Share-Analysis/Divvy_Trips_All/data")

library(tidyverse)

# Get a list of all CSV files in the data folder
file_list <- list.files(pattern = "*.csv")

# Read all CSV files and combine them into one data frame
all_data <- lapply(file_list, read_csv) %>% bind_rows()

# Check the first few rows of the combined data
head(all_data)

#clean and Prepare the Data

# Convert start_time and end_time to date-time format
all_data$start_time <- as.POSIXct(all_data$start_time, format = "%Y-%m-%d %H:%M:%S")
all_data$end_time <- as.POSIXct(all_data$end_time, format = "%Y-%m-%d %H:%M:%S")

# Calculate ride length in minutes
all_data <- all_data %>%
  mutate(
    ride_length = as.numeric(difftime(end_time, start_time, units = "mins")),
    day_of_week = weekdays(as.Date(start_time))
  ) %>%
  filter(ride_length > 0)  # Remove invalid rides

# Select relevant columns
all_data <- all_data %>%
  select(trip_id, start_time, end_time, usertype, ride_length, day_of_week)

#Analyze the Data

# Average ride length by user type
avg_ride_length <- all_data %>%
  group_by(usertype) %>%
  summarize(avg_length = mean(ride_length))

# Total rides per day of the week by user type
rides_by_day <- all_data %>%
  group_by(usertype, day_of_week) %>%
  summarize(total_rides = n())

# View results
print(avg_ride_length)

#Visualize the Results Use ggplot2 for visualizations.
# Bar plot for total rides by day of the week by user type
ggplot(rides_by_day, aes(x = day_of_week, y = total_rides, fill = usertype)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Total Rides by Day of Week",
       x = "Day of the Week", y = "Total Rides") +
  theme_minimal()