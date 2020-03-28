#!/bin/bash
set -ueo pipefail

RENDER_SVG="$(command -v rendersvg)" || true
INKSCAPE="$(command -v inkscape)" || true
OPTIPNG="$(command -v optipng)" || true

if [ -n "$INKSCAPE" ] ; then
  if "$INKSCAPE" --help | grep -e "--export-png" > /dev/null; then
    EXPORT_FILE_OPTION="--export-png"
  else
    EXPORT_FILE_OPTION="--export-file"
  fi
fi

SRC_FILE="assets.svg"
ASSETS_DIR="assets"

i="$1"

echo "Rendering '$ASSETS_DIR/$i.png'"
if [[ -n "${RENDER_SVG}" ]]; then
  "$RENDER_SVG" --export-id "$i" \
                "$SRC_FILE" "$ASSETS_DIR/$i.png"
else
  "$INKSCAPE" --export-id="$i" \
              --export-id-only \
              "$EXPORT_FILE_OPTION"="$ASSETS_DIR/$i.png" "$SRC_FILE" >/dev/null
fi
if [[ -n "${OPTIPNG}" ]]; then
  "$OPTIPNG" -o7 --quiet "$ASSETS_DIR/$i.png"
fi
