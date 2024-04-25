% Path to the folder containing data files
root_path = '/Users/shreyasv/Desktop/Comp_Neuro/Relationship_between_latent_dynamics_and_LFP'; % Change this to the path of the folder containing the repo
data_path = fullfile(root_path, 'data');

% Specify the file to ignore
file_to_ignore1 = 'filenames.mat';  % replace with the name of the file to ignore
file_to_ignore2 = 'bands_name.mat';  % replace with the name of the file to ignore
% Get a list of all files in the data directory
data_files = dir(fullfile(data_path, '*.mat'));  % adjust the extension if necessary

% Initialize cell arrays to store filenames and any other associated information
filenames = {};  % Using dynamic cell array for flexibility



% Populate the cell arrays
for i = 1:length(data_files)
    if strcmp(data_files(i).name, file_to_ignore1)
        continue;  % Skip the rest of the loop if the current file is the one to ignore
    end
    if strcmp(data_files(i).name, file_to_ignore2)
        continue;  % Skip the rest of the loop if the current file is the one to ignore
    end
    % If Han in the filename, then skip
    if contains(data_files(i).name, 'Han')
        filenames{end+1, 1} =  data_files(i).name;
        filenames{end, 2} = {'LeftS1Area2'};
        continue;
    end
    if contains(data_files(i).name, 'Chewie')
        if contains(data_files(i).name, '2016')
            filenames{end+1, 1} =  data_files(i).name;
            filenames{end, 2} = {'PMd'};
        end
        filenames{end+1, 1} =  data_files(i).name;
        filenames{end, 2} = {'M1'};
        continue;
    end
    if contains(data_files(i).name, 'Lando')
        filenames{end+1, 1} =  data_files(i).name;
        filenames{end, 2} = {'LeftS1Area2'};
        continue;
    end
    if contains(data_files(i).name, 'Mihili')
        filenames{end+1, 1} =  data_files(i).name;
        filenames{end, 2} = {'PMd'};
        filenames{end+1, 1} =  data_files(i).name;
        filenames{end, 2} = {'M1'};
        continue;
    end
    % Append the current file path to the 'filenames' array
    % filenames{end+1, 1} =  data_files(i).name;
    % filenames{end, 2} = {'PMd'};  % Example: You might want to store array-specific information or any relevant parameter
end
% for i = 1:length(data_files)
%     if strcmp(data_files(i).name, file_to_ignore1)
%         continue;  % Skip the rest of the loop if the current file is the one to ignore
%     end
%     if strcmp(data_files(i).name, file_to_ignore2)
%         continue;  % Skip the rest of the loop if the current file is the one to ignore
%     end
%     if contains(data_files(i).name, 'Chewie')
%         if contains(data_files(i).name, '2016')
%             filenames{end+1, 1} =  data_files(i).name;
%             filenames{end, 2} = {'PMd'};
%         end
%     end
%     if contains(data_files(i).name, 'Mihili')
%         filenames{end+1, 1} =  data_files(i).name;
%         filenames{end, 2} = {'PMd'};
%         continue;
%     end
% end
% for i = 1:length(data_files)
%     if strcmp(data_files(i).name, file_to_ignore1)
%         continue;  % Skip the rest of the loop if the current file is the one to ignore
%     end
%     if strcmp(data_files(i).name, file_to_ignore2)
%         continue;  % Skip the rest of the loop if the current file is the one to ignore
%     end
%     % If Han in the filename, then skip
%     if contains(data_files(i).name, 'Han')
%         filenames{end+1, 1} =  data_files(i).name;
%         filenames{end, 2} = {'LeftS1Area2'};
%         continue;
%     end

%     if contains(data_files(i).name, 'Lando')
%         filenames{end+1, 1} =  data_files(i).name;
%         filenames{end, 2} = {'LeftS1Area2'};
%         continue;
%     end
% end

% Save the data to a .mat file
save(fullfile(data_path, 'filenames.mat'), 'filenames');
