# LFP Battery Single Particle Model (SPM) Simulation

## About the Project
This project presents a **Single Particle Model (SPM)** simulation developed in MATLAB/Simscape Battery™ to analyze the **electrochemical and kinetic** behaviors of a 2.3Ah 26650 Cylindrical Lithium Iron Phosphate (LiFePO4 - LFP) battery cell. 

The simulation focuses on:
* Predicting **terminal voltage responses** across various C-rates, specifically C/30 and 1C charge/discharge profiles.	
* Analyzing **solid-phase diffusion** dynamics and their impact on total capacity utilization.
* Validating the model's physical fidelity by comparing simulated results with established literature data.

## Folder Structure
This repository contains the following files:
* **`Case_SPM.slx`**: The main Simscape Battery simulation model incorporating the Single Particle block.
* **`parameters_reference.m`**: The initialization script (set as `InitFcn`) that loads equilibrium potentials (OCV) and kinetic parameters—based on Zhang et al. (2014) and Trivella et al. (2023)—into the MATLAB Workspace.
* **`Graphics/`**: A folder containing 8 exported plots illustrating terminal voltage responses and cumulative Ampere-hour throughput for all simulated cases.
* **`Report.pdf`**: Comprehensive documentation covering the parameter extraction methodology, governing equations, result analysis, and technical discussion.

## System Requirements
To execute the model, the following software and toolboxes must be installed:
* **MATLAB** (R2024a or newer is required to support Simscape Battery features).
* **Simulink**.
* **Simscape** and **Simscape Battery** add-ons.
* *(Note: This project was developed and verified using MATLAB R2026a).*

## How to Run the Model
1. Extract the ZIP file into a local directory on your computer.
2. Open MATLAB and set the "Current Folder" to the directory where the files were extracted.
3. Double-click `Case_SPM.slx` to open the Simulink model.
4. The `parameters_reference.m` script will run automatically to initialize the required variables.
5. Click the **"Run"** button in the Simulink toolstrip.
6. Upon completion, review the resulting graphs via the **Scope** blocks or by accessing the pre-rendered images in the `Graphics` folder.