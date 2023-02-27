#!/bin/bash

# Define a function that generates a report
function generate_report {
  # Get the current date and time
  date_time=$(date "+%Y-%m-%d %H:%M:%S")

  # Get the CPU usage percentage
  cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')

  # Get the memory usage percentage
  mem_usage=$(free | awk '/Mem/{printf("%.2f"), $3/$2*100}')

  # Get the disk usage percentage
  disk_usage=$(df | awk '$NF=="/"{printf "%.2f", $5}')

  # Print the report header
  echo "Report generated on: $date_time"
  echo "CPU usage percentage: $cpu_usage%"
  echo "Memory usage percentage: $mem_usage%"
  echo "Disk usage percentage: $disk_usage%"

  # Print the report footer
  echo "End of report"
}

# Call the generate_report function
generate_report
