#!/bin/bash
REPO="AutoElekIA/liga-saas"

gh label create "oleada-5" --color "FBCA04" --description "Oleada 5 - Salida y Escala" --repo $REPO --force
gh label create "epica-salida" --color "0E8A16" --description "Salida y escala" --repo $REPO --force

echo "Labels creados."
