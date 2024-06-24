#!/bin/bash

# Define the output CSV file
output_file="/path/to/memory_usage.csv"

# Get the current timestamp
timestamp=$(date +"%Y-%m-%d %H:%M:%S")

# Get the memory usage using top command
memory_usage=$(top -b -n1 | grep "MiB Mem" | awk '{print $8}')

# Append the timestamp and memory usage to the CSV file
echo "$timestamp,$memory_usage" >> $output_file
