import torch
import torchvision.datasets as datasets

print(torch.cuda.is_available()) # 查看CUDA是否可用
print(torch.cuda.device_count()) # 查看可用的CUDA数量
print(torch.version.cuda) # 查看CUDA的版本号

train_datset = datasets.ImageFolder()
print(train_datset.classes)
print(train_datset.class_to_idx)
print(train_datset.imgs)