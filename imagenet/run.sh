python -u v83.py \
    -a mobilenetv3_large_100 --dist-url 'tcp://localhost:10001' --multiprocessing-distributed --world-size 1 --rank 0 --seed 9 \
    --epochs 5 --lr 0.001 --wd 1e-6 --batch-size 128 --ncrops 2 \
    --gem-p 3.0 --pos-margin 1.0 --neg-margin 0.0 \
    --input-size 256 --sample-size 1000000 --memory-size 20000 \
    /home/pod/shared-nvme/train \
>> stage1.log 2>&1 &