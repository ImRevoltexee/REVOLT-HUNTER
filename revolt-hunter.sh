#!/bin/bash

domain=$1

echo "[+] Discovering subdomains"

subfinder -d $domain -silent > subdomains.txt

echo "[+] Checking alive hosts"

cat subdomains.txt | httpx -silent > alive.txt

echo "[+] Done"
