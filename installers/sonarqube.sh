#!/usr/bin/env bash

echo "You should've update sonarqube before hand btw..."

sleep 3

wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.1.2450-linux.zip -O sonar-scanner.zip

unzip sonar-scanner.zip

mkdir -p ~/sonar-scanner

mv sonar-scanner-4.6.1.2450-linux/* ~/sonar-scanner

rm -rf sonar-scanner-4.6.1.2450-linux