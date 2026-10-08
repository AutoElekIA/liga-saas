#!/bin/bash
REPO="AutoElekIA/liga-saas"

echo "Creando labels para Oleada 3..."

gh label create "epica-negocio" --color "1D76DB" --description "Épica Negocio" --repo $REPO --force
gh label create "epica-legal" --color "5319E7" --description "Épica Legal" --repo $REPO --force
gh label create "epica-operacion" --color "0E8A16" --description "Épica Operación" --repo $REPO --force
gh label create "oleada-3" --color "C5DEF5" --description "Oleada 3 — Negocio y Legal" --repo $REPO --force

echo "✅ Labels creados."
