#!/bin/bash
set -euo pipefail

code-server --bind-addr "0.0.0.0:8081" --auth none $WORK_DIR
