---
title: "Data Challenge - Land Cover Predictive Modeling From Satellite Images"
date: 2023-08-03T23:29:21+05:30
draft: false
github_link: "https://github.com/gurusabarish/hugo-profile"
author: "Homer"
tags:
  - Deep Learning
  - Image Segmentation
  - Remote Sensing
image: /images/projects/dataChallenge.jpg
description: ""
toc:
---
<base target="_blank">

## Description

In this data challenge, I tackled semantic segmentation using a dataset of satellite images. With 18,491 training and 5,043 test images, each sized at $256 \times 256$ pixels and featuring four channels (RGB and near-infrared), the goal was to predict pixel-level class distributions using mask images.

Addressing class distribution imbalance (see Fig [\ref{fig:classe_distrib}]), a vital factor in cost function selection, was a key consideration.

**Model Exploration:** Convolutional Neural Networks (CNNs) emerged as prime candidates for their prowess in computer vision, especially semantic segmentation. Starting with a basic convolutional network, I shifted to pre-trained models as backbones. MobileNetV2, pre-trained on ImageNet, struck a balance between performance and training time.

**Unveiling Unet:** For advanced performance, Unet models, popular for semantic segmentation, were adopted. The \textbf{segmentation models} library facilitated experiments with various backbones. EfficientNet models showed promise due to their balanced performance and parameter efficiency (Fig [\ref{fig:efficientnet}]). EfficientNet-B3 emerged as a prime choice, delivering robust results within reasonable training times.

**Loss Refinement:** Transitioning from categorical cross-entropy to Jaccard loss optimized for Mean Intersection Over Union (mIoU) metric bolstered performance. This adaptation effectively addressed mask image class imbalance.

**Model Selection:** After rigorous testing, the LinkNet architecture, with EfficientNet-B3 backbone, stood out. Training focused on deconvolution layers. Optimizing with Jaccard loss and Adam optimizer, early stopping prevented overfitting. The model achieved a Kullback-Leibler divergence of 0.0917 on the test set.

**Overcoming Challenges:** Challenges included data size constraints, GPU limitations, and mastering Keras and TensorFlow. This experience underscored my ability to enhance skills in deep learning and semantic segmentation, achieving success on an uncharted task.


[***Read full report***](/project_reports/Challenge_apprentissage_automatique.pdf)
