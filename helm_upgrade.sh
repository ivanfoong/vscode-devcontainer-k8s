#!/bin/bash

helm dependency update ./chart
helm upgrade example ./chart --install -f ./chart/values.yaml