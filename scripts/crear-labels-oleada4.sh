#!/bin/bash
REPO="AutoElekIA/liga-saas"

gh label create "oleada-4" --color "006B75" --description "Oleada 4 - Construccion" --repo $REPO --force
gh label create "epica-construccion" --color "B60205" --description "Construccion del MVP" --repo $REPO --force

echo "Labels creados."
