#!/bin/bash

echo "---System Status Log (New Entry)---" >> performance_report.txt
date >> performance_report.txt

echo "---Memory Usage (MB)---" >> performance_report.txt
free -m >> performance_report.txt

echo "---System Uptime---" >> performance_report.txt
uptime >> performance_report.txt

echo "Log saved."
