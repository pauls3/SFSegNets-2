import numpy as np

from torch import nn
import torch.onnx
from network.nn.operators import AlignedModule, PSPModule, AlignedModulev2, AlignedModulev2PoolingAtten, \
    SPSPModule
from network import sfnet_resnet


model_location = 'pretrained_models/railsem19_sfnet_resnet18_mean-iu_0.75268.pth'
batch_size = 1

map_location = lambda storage, loc: storage
if torch.cuda.is_available():
    map_location = None
torch_model = sfnet_resnet.AlignNetResNet(19, trunk='resnet-18-deep', criterion=criterion, variant='D', skip='m1')