#!/bin/bash

ARQUIVO="$1"
HASH_ARQUIVO="hash_salvo.txt"

if [ -z "$ARQUIVO" ]; then
  echo "Uso: ./monitor_integridade.sh <arquivo>"
  exit 1
fi

if [ ! -f "$HASH_ARQUIVO" ]; then
  sha256sum "$ARQUIVO" > "$HASH_ARQUIVO"
  echo "Hash inicial gerado e salvo."
  exit 0
fi

sha256sum -c "$HASH_ARQUIVO"
