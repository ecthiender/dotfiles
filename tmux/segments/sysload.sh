#!/bin/bash

echo "⇊ $(cat /proc/loadavg | awk '{print $1}')"
