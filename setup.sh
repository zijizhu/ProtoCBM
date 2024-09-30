#!/bin/bash

set -x

mkdir datasets && cd datasets
gdown 1nebbxjchrIjAjVMLybvkfJuR-nD-ZGwF
unzip -q cub200_augmented.zip

wget https://data.caltech.edu/records/65de6-vp158/files/CUB_200_2011.tgz
tar -xzf CUB_200_2011.tgz

wget -O CUB_processed.tar.gz https://worksheets.codalab.org/rest/bundles/0x5b9d528d2101418b87212db92fea6683/contents/blob/
tar -xzf CUB_processed.tar.gz

mv attributes.txt CUB_200_2011
