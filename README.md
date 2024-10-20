<meta name="robots" content="noindex">

# PLANSIEVE


This repository contains all the necessary resources to reproduce the experiments presented in the PLANSIEVE paper.

## Augmented Workload
The **JOB-LIGHT-SCALE** and **STATS-CEB-SCALE** workloads used for evaluation are located in the `Workloads` folder.

## Feature Vectors
The **input_data** folder contains the featurized data for different cardinality initialization scenarios. Each folder corresponds to a specific initialization method, and the files follow this naming convention:

- `input_folder/JOB-LIGHT/deepdb` contains featurized data with **DeepDB** initialization.
  - `l1_with_pos_vec_deepdb.25_2_way.csv` – Initialized with **DeepDB** and includes a 25% random mixture of true cardinalities.
  - `l1_with_pos_vec_deepdb.5_2_way.csv` – Initialized with **DeepDB** and includes a 50% random mixture of true cardinalities.

Similar files are available for other initialization methods.

## Model
Trained models for **JOB-LIGHT-SCALE** and **STATS-CEB-SCALE** are stored in the `model` folder. These models are pre-trained and ready for evaluation.

## Testing
All testing scripts required to evaluate the trained models on different workloads are provided in the `scripts` folder.
