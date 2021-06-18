#!/usr/bin/env bash

sudo apt install unzip
kaggle competitions download -c house-prices-advanced-regression-techniques -p packages/regression_model/regression_model/datasets/
unzip house-prices-advanced-regression-techniques.zip
