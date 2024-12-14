python -u v83.py \
    -a tf_efficientnetv2_m_in21ft1k --dist-url 'tcp://localhost:10001' --multiprocessing-distributed --world-size 1 --rank 0 --seed 90 \
    --epochs 10 --lr 0.1 --wd 1e-6 --batch-size 128 --ncrops 2 \
    --gem-p 1.0 --pos-margin 0.0 --neg-margin 1.0 \
    --input-size 256 --sample-size 1000000 --memory-size 20000 \
    --resume ./v83/train/checkpoint_0004.pth.tar \
    /home/pod/shared-nvme/train \
>> stage1.log 2>&1 &