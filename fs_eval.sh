export PYTHONPATH=./:$PYTHONPATH
model_dir=~/models/feature_scatter_cifar10/
CUDA_VISIBLE_DEVICES=0 python fs_eval.py \
    --model_dir=$model_dir \
    --init_model_pass=latest \
    --attack=True \
    --attack_method_list=natural-fgsm-pgd\
    --dataset=cifar10 \
    --batch_size_test=80 \
    --resume