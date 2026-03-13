#!/bin/sh

DB_PATH="/data/CmsKitDemo.db"
TEMPLATE_DB="/app/CmsKitDemoDb/CmsKitDemo.db"

if [ ! -f "$DB_PATH" ]; then
  mkdir -p "$(dirname "$DB_PATH")"
  if [ -f "$TEMPLATE_DB" ]; then
    cp "$TEMPLATE_DB" "$DB_PATH"
  fi
fi

exec dotnet CmsKitDemo.dll

