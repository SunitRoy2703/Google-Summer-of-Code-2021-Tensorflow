#!/bin/bash
# Copyright 2020 The TensorFlow Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================

# Download TF Lite model from the internet if it does not exist.

TFLITE_RESOURCES="mobilebert_qa_vocab.zip"
TFLITE_MODEL="model.tflite"
TFLITE_VOCA="vocab.txt"
TFLITE_DIC="contents_from_squad_dict_format.json"
TFLITE_URL="https://storage.googleapis.com/download.tensorflow.org/models/tflite/bert_qa"
TFLITE_MODEL_URL="https://tfhub.dev/tensorflow/lite-model/mobilebert/1/metadata/1?lite-format=tflite"

RESOURCES_DIR="BertQACore/Resources"
RESOURCES_ZIP_PATH="${RESOURCES_DIR}/${TFLITE_RESOURCES}"
MODEL_PATH="${RESOURCES_DIR}/${TFLITE_MODEL}"
VOCA_PATH="${RESOURCES_DIR}/${TFLITE_VOCA}"
DIC_PATH="${RESOURCES_DIR}/${TFLITE_DIC}"

RESOURCES=($MODEL_PATH $VOCA_PATH)

function is_all_existing() {
    local bool="true"
    local files=("$@")
    for file in ${files[@]}
    do
        if [ ! -f "${file}" ]; then
            bool="false"
        fi
    done
    echo "${bool}"
}

tf_resource_exists=$( is_all_existing "${RESOURCES[@]}" )

if [ "${tf_resource_exists}" = "false" ]; then
    # Download TFLite model.
    curl --create-dirs -o "${MODEL_PATH}" -L "${TFLITE_MODEL_URL}"
    echo "INFO: Downloaded TensorFlow Lite resources to ${RESOURCES_DIR}."
fi

if [ ! -f "${DIC_PATH}" ]; then
    # Donwload content data.
    curl --create-dirs -o "${DIC_PATH}" -L "${TFLITE_URL}/${TFLITE_DIC}"
    echo "INFO: Downloaded content and question data to ${RESOURCES_DIR}."
fi

echo "INFO: All resources are prepared."

