#!/bin/bash

for i in `cat data.json  | grep '"repo"' | cut -d'"' -f4`;do git clone https://github.com/$i $(echo $i | sed  's/\//_/g'); done

