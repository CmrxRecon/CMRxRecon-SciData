# CMRxRecon SciData

## About
This repository provides the scripts for the paper "CMRxRecon: A publicly available k-space dataset and benchmark to advance deep learning for cardiac MRI".


[Dataset](https://doi.org/10.7303/syn52965326) |
[GitHub](https://github.com/CmrxRecon/CMRxRecon/) |
[Publications](#Publication-references)

## Motivation
This study aims to provide a benchmark dataset that enables the broad research community to promote advances in CMR image reconstruction research.

## Background
Cardiac magnetic resonance imaging (CMR) has emerged as a valuable diagnostic tool for cardiac diseases. However, a significant drawback of CMR is its slow imaging speed, resulting in low patient throughput and compromised clinical diagnostic quality. The limited temporal resolution also causes patient discomfort and introduces artifacts in the images, further diminishing their overall quality and diagnostic value. There has been growing interest in deep learning-based CMR imaging algorithms that can reconstruct high-quality images from highly under-sampled k-space data. However, the development of deep learning methods requires large training datasets, which have so far not been made publicly available for CMR. To address this gap, we released a dataset that includes multi-contrast, multi-view, multi-slice and multi-coil CMR imaging data from 300 subjects. Imaging studies include cardiac cine and mapping sequences. The ‘CMRxRecon’ dataset contains raw k-space data and auto-calibration lines. All image qualities are sufficient for cardiac region segmentation and quantitative analysis. Scripts of state-of-the-art reconstruction algorithms were also provided as a point of reference. Our aim is to facilitate the advancement of state-of-the-art CMR image reconstruction by introducing standardized evaluation criteria and making the dataset freely accessible to the research community.

This repository (GitHub) contains Matlab code for zero-filling, GRAPPA, and ESPIRiT methods.

## The CMRxRecon Dataset
A total of 300 healthy volunteers from a single center were included in this study.
All the data contains raw k-space data, auto-calibration lines (ACS, 24 lines) and basic information of the acquisition.
The released dataset include 120 training data, 60 validation data and 120 test data. But you can ignore the grouping since all the raw data are provided for all cases.

If you hope to connect this dataset with our MICCAI 2023 challenge dataset, please follow the link: [Challenge dataset] https://www.synapse.org/#!Synapse:syn51471091/wiki/622170.
The manual segmentation labels are there!

General workflow to produce the ‘CMRxRecon’ dataset:
![Workflow](https://github.com/CmrxRecon/CMRxRecon-SciData/blob/main/Workflow.png)


## Package Structure
a)	'ReconCode ': contains parallel imaging reconstruction code;
b)	'DemoData': contain one example data;
c)	'Evaluation': contains image quality evaluation code.


## Contact
The code is provided to support reproducible research. If the code is giving syntax error in your particular configuration or some files are missing then you may open an issue or email us at CMRxRecon@outlook.com

## Publication references
1.Wang C, Lyu J, Wang S, et al. CMRxRecon: A publicly available k-space dataset and benchmark to advance deep learning for cardiac MRI. Scientific Data, 2024, 11(1): 687.

2.Wang C, Lyu J, Wang S, et al. CMRxRecon: A publicly available k-space dataset. Synapse, https://doi.org/10.7303/syn52965326, 2023.
