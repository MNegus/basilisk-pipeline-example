%% pressure_convergence.m
% Plots the pressure for droplet impact, with varying values of the
% MAXLEVEL

%% Parameters
parent_dir = "/home/michael/scratch/basilisk-pipeline-data";
MAXLEVELS = [6, 7, 8, 9, 10]; % Max levels to test
NO_TIMESTEPS = 400; % Total number of timesteps per simulation
IMPACT_TIME = 0.125;
DT = 1e-3;

legend_entries = strings(size(MAXLEVELS));
for n = 1 : length(legend_entries)
   legend_entries(n) = sprintf("Max level = %d", MAXLEVELS(n)); 
end


%% Plots pressure
figure(1);

% Loops over the timesteps
for q = 0 : NO_TIMESTEPS
    
    % Loops over the MAX_LEVELS
    for MAXLEVEL = MAXLEVELS
       
        % Reads in the boundary_output file, whose first column is x and
        % second is the pressure
        output_mat = dlmread(sprintf("%s/max_level_%d/raw_data/boundary_output_%d.txt", parent_dir, MAXLEVEL, q));
        unsorted_xs = output_mat(:, 1);
        unsorted_ps = output_mat(:, 2);
        
        % Sorts the arrays, as in general they will be unsorted due to
        % parallelisation
        [xs, idxs] = sort(unsorted_xs);
        ps = unsorted_ps(idxs);
        
        % Plot the pressure
        plot(xs, ps);
        hold on;
    end
    hold off;
    
    % Figure properties
    grid on;
    legend(legend_entries, "interpreter", "latex", "fontsize", 12);
    set(gca,'TickLabelInterpreter','latex');
    set(gca, 'Fontsize', 12);
    title(sprintf("t = %.4f", q * DT - IMPACT_TIME), "interpreter", "latex");
    ylim([-0.3, max(6, max(ps))]);
    pause(0.01);
    
end