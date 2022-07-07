#!/bin/bash

notes=( "Ab" "A" "A#" "Bb" "B" "B#" "Cb" "C" "C#" "Db" "D" "D#" "Eb" "E" "E#" "Fb" "F" "F#" "Gb" "G" )

lower_octave=3
upper_octave=4

for octave in $lower_octave $upper_octave
do
	for note in "${notes[@]}"
	do
	current_note="$note$octave"
	mkdir -p features/$current_note
	find ./ -name "*$note$octave*" -exec cp -r {} ./features/$current_note \;
	done
done
