#!/bin/bash

set -euxo pipefail

function install_binary() {
    go install github.com/honeycombio/honeymarker@latest
}

function create_marker() {
    honeymarker -k "$INPUT_APIKEY" -d "$INPUT_DATASET" add -t "$INPUT_TYPE" -m "$INPUT_MESSAGE"
}

install_binary
create_marker
