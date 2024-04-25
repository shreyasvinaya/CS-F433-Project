% File to generate bands_name.mat
% the Band names are  {'LMP', '0.5-4 Hz', '4-8 Hz', '8-12 Hz', '12-25 Hz', '25-50 Hz', '50-100 Hz', '100-200 Hz', '200-400 Hz'}

% Path to the folder containing data files
root_path = '/Users/shreyasv/Desktop/Comp_Neuro/Relationship_between_latent_dynamics_and_LFP'; % Change this to the path of the folder containing the repo
data_path = fullfile(root_path, 'data');

bands_name = {'LMP', '0.5-4 Hz', '4-8 Hz', '8-12 Hz', '12-25 Hz', '25-50 Hz', '50-100 Hz', '100-200 Hz', '200-400 Hz'};

save(fullfile(data_path, 'bands_name.mat'), 'bands_name');