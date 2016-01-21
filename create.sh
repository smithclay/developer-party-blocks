#!/bin/sh

sed -e "s;%Q1%;$1;g" -e "s;%Q2%;$2;g" -e "s;%Q3%;$3;g" -e "s;%Q4%;$4;g" template.svg > build/$5
