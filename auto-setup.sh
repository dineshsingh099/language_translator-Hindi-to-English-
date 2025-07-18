#!/bin/bash

ROOT_DIR="project_root"
folders=("config" "data_cleaning" "data_loading" "data_transformation" "dataset" "encoding" "models" "training")
python_files=("evaluate.py" "inference.py" "train_pipeline.py" "transform_pipeline.py")

mkdir -p "$ROOT_DIR"

for folder in "${folders[@]}"; do
    mkdir -p "$ROOT_DIR/$folder"
    touch "$ROOT_DIR/$folder/__init__.py"
done

for file in "${python_files[@]}"; do
    touch "$ROOT_DIR/$file"
    chmod +x "$ROOT_DIR/$file"
done

echo "Project structure created successfully!"
