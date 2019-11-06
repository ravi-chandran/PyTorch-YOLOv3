REM Windows batch file

REM CREDIT: https://github.com/pjreddie/darknet/tree/master/scripts/get_coco_dataset.sh

REM Clone COCO API
git clone https://github.com/pdollar/coco
cd coco

mkdir images
cd images

REM Download Images
curl https://pjreddie.com/media/files/train2014.zip > train2014.zip
curl https://pjreddie.com/media/files/val2014.zip > val2014.zip

REM Unzip
powershell Expand-Archive train2014.zip -DestinationPath .
powershell Expand-Archive val2014.zip -DestinationPath .

cd ..

REM Download COCO Metadata
curl https://pjreddie.com/media/files/instances_train-val2014.zip > instances_train-val2014.zip
curl https://pjreddie.com/media/files/coco/5k.part > 5k.part
curl https://pjreddie.com/media/files/coco/trainvalno5k.part > trainvalno5k.part
curl https://pjreddie.com/media/files/coco/labels.tgz > labels.tgz

REM TODO
REM tar xzf labels.tgz
REM unzip -q instances_train-val2014.zip

REM Set Up Image Lists
REM TODO
REM paste <(awk "{print \"$PWD\"}" <5k.part) 5k.part | tr -d '\t' > 5k.txt
REM paste <(awk "{print \"$PWD\"}" <trainvalno5k.part) trainvalno5k.part | tr -d '\t' > trainvalno5k.txt
