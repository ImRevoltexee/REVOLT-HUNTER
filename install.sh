#!/bin/bash

echo "[+] Installing dependencies..."

sudo apt update

sudo apt install -y curl wget unzip git

echo "[+] Installing Subfinder..."

go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

echo "[+] Installing HTTPX..."

go install github.com/projectdiscovery/httpx/cmd/httpx@latest

echo "[+] Done."
