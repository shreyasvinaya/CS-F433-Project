# CS F433 Project: Local field potentials reflect cortical population dynamics in a region-specific and frequency-dependent manner
**Task**: to reproduce the results of the paper "Local field potentials reflect cortical population dynamics in a region-specific and frequency-dependent manner" by Gallego et al. 2022

This code is Majorly sampled from the original code provided by the authors of the paper. The code is written in MATLAB and uses the TrialData repository. The code is used to reproduce the results

This code also adds `generate_filenames.m` to generate the `filenames.mat` file which is not provided in the original code.
- The filenames.mat file contains the file names of the data files along with region to consider for the analysis.

This code adds the `generate_bands_name.m` file to generate the `bands_name.mat` file which is not provided in the original code.
- The bands_name.mat file contains the labels of frequency bands to consider for the analysis.

## Requirements:
- MATLAB
- [TrialData repository](https://github.com/mattperich/TrialData)
- Data files from the authors of the paper  [Link](https://doi.org/10.5061/dryad.xd2547dkt)

## Steps to reproduce the results:
1. Download the data files from the authors of the paper [Link](https://doi.org/10.5061/dryad.xd2547dkt)
2. Clone the repository
3. Add the data files to the `data` folder
4. Modify the `root path` in `generate_filenames.m` and `generate_bands_name.m` 
5. Run the `generate_filenames.m` file to generate the `filenames.mat` file
6. Run the `generate_bands_name.m` file to generate the `bands_name.mat` file
7. Run the `gen_all_fig_new.m` file to reproduce the results

## Files:
- The `generate_filenames.m` file generates the `filenames.mat` file inside the data folder
- The `generate_bands_name.m` file generates the `bands_name.mat` file inside the data folder
- The `gen_all_fig_new.m` file reproduces the results of the paper

## Results:
The results are saved in the `results` folder. The results include the figures in .fig and .png format.

## Note:
- The code is tested on MATLAB R2024a
- The code is tested on Mac OS Sonoma 14.4.1

Poster Presentation: [Link](Poster.pdf)

## Contributors:
- [Shreyas V](https://shreyasvinaya.github.io/folio/)
- Garvit Arora
- Shreyash Patel
- Abhrajeet Mukherjee

## Supervisor:
- [Basabdatta Sen Bhattacharya](https://www.bits-pilani.ac.in/goa/basabdatta-bhattacharya/)

## Acknowledgements:
This work is done as a part of the course project for the course CS F433: Computational Neuroscience at BITS Pilani, Goa Campus.


## References:
Gallego-Carracedo, C., Perich, M. G., Chowdhury, R. H., Miller, L. E., & Gallego, J. Á. (2022). 
Local field potentials reflect cortical population dynamics in a region-specific and frequency-dependent manner. Elife, 11, e73155.

Gallego-Carracedo, Cecilia et al. (2022). 
Local field potentials reflect cortical population dynamics in a region-specific and frequency-dependent manner (Dataset). Dryad. 
https://doi.org/10.5061/dryad.xd2547dkt
