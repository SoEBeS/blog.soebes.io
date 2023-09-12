#!/bin/bash
rm -fr public
hugo server --forceSyncStatic \
  --disableFastRender \
  -d public \
  --port 3300 \
  --cleanDestinationDir \
  --config config.toml

#hugo server --forceSyncStatic \
#  --buildDrafts \
#  --disableFastRender \
#  -d public \
#  --port 3300 \
#  --cleanDestinationDir \
#  --config config.toml
