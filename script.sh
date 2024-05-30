#!/bin/bash

ts=`date +%s`
newman run /home/canefis/Documents/coll.json -e /home/canefis/Documents/env.json --export-environment env.json

echo "$ts Just run the echo sample " >> echo_kraken_output.txt 
