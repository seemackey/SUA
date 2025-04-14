% Define correlation matrices for Attend and Ignore conditions
attendMatrix = [
    1.000000  -0.321542  0.134190  -0.141162  0.072934  -0.006033;
   -0.321542   1.000000  0.009384   0.500491  0.146221   0.333103;
    0.134190   0.009384  1.000000  -0.354066  0.227365  -0.060104;
   -0.141162   0.500491 -0.354066   1.000000  0.079961   0.389741;
    0.072934   0.146221  0.227365   0.079961  1.000000  -0.222228;
   -0.006033   0.333103 -0.060104   0.389741 -0.222228   1.000000];

ignoreMatrix = [
    1.000000  -0.361882  0.070844   0.010311  0.103456   0.054629;
   -0.361882   1.000000 -0.090160   0.395944  0.009208   0.294946;
    0.070844  -0.090160  1.000000  -0.350115  0.281484  -0.013658;
    0.010311   0.395944 -0.350115   1.000000  0.046204   0.406178;
    0.103456   0.009208  0.281484   0.046204  1.000000  -0.264424;
    0.054629   0.294946 -0.013658   0.406178 -0.264424   1.000000];

% Compute the difference matrix (Attend - Ignore)
differenceMatrix = attendMatrix - ignoreMatrix;

% Define tick labels using correct order (from correlationInfo.txt)
channelIDs = [9, 11, 12];
unitIDs = [1, 2];

tickLabels = arrayfun(@(c, u) sprintf('C%dU%d', c, u), ...
    repelem(channelIDs, length(unitIDs)), repmat(unitIDs, 1, length(channelIDs)), 'UniformOutput', false);

% Create a figure with 3 subplots
figure;
colormap jet; % Apply consistent colormap for all matrices

% Panel 1: Attend Condition Correlation Matrix
subplot(1, 3, 1);
imagesc(attendMatrix);
colorbar;
caxis([-1 1]); % Set color scale to be the same for all plots
axis square;
title('Attend Condition');
xlabel('Channel-Unit Combination');
ylabel('Channel-Unit Combination');
xticks(1:length(tickLabels));
xticklabels(tickLabels);
yticks(1:length(tickLabels));
yticklabels(tickLabels);
xtickangle(45);

% Panel 2: Ignore Condition Correlation Matrix
subplot(1, 3, 2);
imagesc(ignoreMatrix);
colorbar;
caxis([-1 1]); % Keep same scale for comparison
axis square;
title('Ignore Condition');
xlabel('Channel-Unit Combination');
ylabel('');
xticks(1:length(tickLabels));
xticklabels(tickLabels);
yticks(1:length(tickLabels));
yticklabels([]);
xtickangle(45);

% Panel 3: Difference Matrix (Attend - Ignore)
subplot(1, 3, 3);
imagesc(differenceMatrix);
colorbar;
caxis([-0.2 0.2]); % Adjust for difference visualization
axis square;
title('Difference (Attend - Ignore)');
xlabel('Channel-Unit Combination');
ylabel('');
xticks(1:length(tickLabels));
xticklabels(tickLabels);
yticks(1:length(tickLabels));
yticklabels([]);
xtickangle(45);

% Set figure properties
set(gcf, 'Position', [100, 100, 1400, 500]); % Adjust figure size
