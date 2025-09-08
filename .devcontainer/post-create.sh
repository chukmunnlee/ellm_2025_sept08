#!/bin/sh

apt update && apt install -y pandoc

START="$(date)"

pip3 install --upgrade pip
pip3 install chromadb pypandoc
pip3 install transformers datasets evaluate rouge_score loralib peft 
pip3 install ipykernel ipywidgets 
pip3 install langchain-community sentence-transformers unstructured
pip3 install diffusers accelerate scipy safetensors
pip3 install torch torchdata torchvision
pip3 install smolagents openai
pip3 install nbconvert[webpdf]
pip3 huggingface_hub[hf_xet]

pip3 install unstructured 
pip3 install pandas networkx openpyxl
pip3 install python-magic python-pptx
pip3 install docx2txt docx msoffcrypto-tool
pip3 install jq nltk
pip3 install duckduckgo_search ddgs
pip3 pypdf pymupdf Pillow

 
echo "Preloads..."
python3 .devcontainer/preload.py

echo "+++ Start time: ${START}"
echo "+++ End time: $(date)"
