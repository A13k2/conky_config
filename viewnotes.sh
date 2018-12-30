#!/bin/bash

#tasks=$(task export)
#echo $tasks
#echo $tasks | awk 'BEGIN{OFS="\t\t"; FS=":|,"; RS="}, {"; print "ID \t\t Task \t\t Urgency"}{print $2, $4, $16}' | sed 's/[]["}]//g'
task export > ~/conky_config/task.json
python ~/conky_config/format_notes.py
