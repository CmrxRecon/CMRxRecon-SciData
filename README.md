# CMRxRecon SciData

## About
This repository provides the scripts for the paper "CMRxRecon: A publicly available k-space dataset and benchmark to advance deep learning for cardiac MRI".


[Website](https://cmrxrecon.github.io/) |
[Dataset](https://doi.org/10.7303/syn52965326) |
[GitHub](https://github.com/CmrxRecon/CMRxRecon/) |
[Publications](#Publication-references)

## Motivation
This study aims to establish a platform for fast CMR image reconstruction and provide a benchmark dataset that enables the broad research community to promote advances in this area of research.

## Background
Cardiac magnetic resonance imaging (CMR) has become an important imaging modality for diagnosing cardiac disease due to its superior soft tissue contrast and non-invasiveness. However, an inherent drawback of MRI is that the imaging speed is particularly slow, which will cause discomfort to patients and intr​oduce motion artifacts into images. CMR image reconstruction from highly under-sampled k-space (raw data) has become a hot topic in recent years.
So far, a large number of AI-based image reconstruction algorithms have shown the potential to improve imaging performance through highly under-sampling data. However, the field of CMR reconstruction still lacks public, standardized, and high-quality datasets. To date, NYU Langone Health has released 'fastMRI' dataset, containing multi-channel knee and brain MRI raw data. However, these images are inadequate for 3D+1D (time domain) applications in cardiac imaging. The goal of establishing the 'CMRxRecon' dataset is to provide a platform that enables the broad research community to participate in this important work.

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
* `ReconCode`: contains reconstruction codes for zero-filling, GRAPPA, and ESPIRiT methods
* 'DemoData': demo data for a single subject

## Contact
The code is provided to support reproducible research. If the code is giving syntax error in your particular configuration or some files are missing then you may open an issue or email us at CMRxRecon@outlook.com

## Publication references
To be public
