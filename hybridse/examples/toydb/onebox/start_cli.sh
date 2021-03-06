#!/bin/bash
# Copyright 2021 4Paradigm
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


set -eE
set -o nounset

cd "$(dirname "$0")"
PROJECT_ROOT=$(git rev-parse --show-toplevel)/hybridse
cd "$PROJECT_ROOT"
mkdir -p log/cli
BUILD_DIR=$PROJECT_ROOT/build/examples/toydb
"${BUILD_DIR}/src/toydb" --role=client --tablet_endpoint=127.0.0.1:9212 --toydb_endpoint=127.0.0.1:9211


