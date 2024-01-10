#!/bin/bash

work=$(expr $1 \* 60)
rest=$(expr $2 \* 60)
for ((i = 0; i < $3; i++)); do
	echo "WORK"
	timer $work && osascript -e 'display notification "Pomodoro" with title "Work Timer is up! Please take a break." sound name "Glass"'
	clear
	echo "REST"
	timer $rest && osascript -e 'display notification "Pomodoro" with title "Break is over! Get back to work." sound name "Glass"'
done
