#!/bin/bash

Xvfb -ac :99 &
export DISPLAY=:99
export LICENSE=accept
pwd
source /opt/ibm/ace-12/server/bin/mqsiprofile

BAR_FILE="prueba-bar.bar"
PROJECT_NAME="FirstFlow"
PROJECT_ROUTE="/TestAceReqRes"

cd $PROJECT_ROUTE
mqsicreatebar -data . -b $BAR_FILE -a $PROJECT_NAME -cleanBuild -trace -configuration . 
ls -lha

