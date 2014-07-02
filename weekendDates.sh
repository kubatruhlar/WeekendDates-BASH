#!/bin/bash
# Jakub Truhlář
# Výpis všech dalších sobot a nedělí, číslo za názvem souboru značí počet dalších. 
# Pokud není zadáno, je proměnná nastavena na 1

for ((i=0; i<${1:-1}; i++))
do
	date -d "next-saturday+ $((7*$i)) days" +"%A, %-d.%-m.%-y"
	date -d "next-sunday+ $((7*$i)) days" +"%A, %-d.%-m.%-y"
done
