#!/bin/bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
    echo "need venv name"
    exit 1
fi

if ! [ -d ../../../../$1 ]; then
    cd ../../../../
    python3 -m venv $1
    cd -
fi
source ../../../../onnx-gpu/bin/activate
cp -r /usr/local/lib/python3.6/dist-packages/cv2/ ../../../../onnx-gpu/lib/python3.6/site-packages/
python3 -m pip install -U pip wheel setuptools
python3 -m pip install -r ava_requirements.txt
