#!/bin/bash

echo "⇊ $(uptime | cut -d " " -f 12 | cut -d "," -f 1)"
