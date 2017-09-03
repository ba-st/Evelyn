#!/bin/sh

echo "Cleaning Pharo"
rm -rf evelyn-development
mkdir evelyn-development
cd evelyn-development

echo "Getting latest Pharo Image and VM"
curl get.pharo.org/60+vm|bash

./pharo-ui Pharo.image eval ../evelynLinuxDevelopment.st
