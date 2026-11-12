# shellcheck shell=bash

cite about-alias
about-alias 'uuidgen aliases'

# Linux
if _binary_exists uuid; then
  alias uuidu="uuid | tr '[:lower:]' '[:upper:]'"
  alias uuidl=uuid

# macOS/BSD
elif _binary_exists uuidgen; then
  alias uuidu="uuidgen"
  alias uuid="uuidgen | tr '[:upper:]' '[:lower:]'"
  alias uuidl=uuid
fi
