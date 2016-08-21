#!/bin/bash

echo "⇊ $(cat /proc/loadavg | cut -d " " -f 1)"
