#!/bin/bash

tasks=$(task export)
echo $tasks | awk -f format_notes.awk | sed 's/[]["\\]//g'
