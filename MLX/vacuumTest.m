%% Vacuum tests conditions for testing MLX chips May 2019
% Initialization
nitrogen = [1 1000 500 100 20 10 2 1 0.7 0.2 0.1 0.025 1]; % in mbar
stepsNitrogen = 1:length(nitrogen);
freon = [1000 500 100 30 20]; % in mbar
stepsFreon = 1:length(freon);
mbar2mtorr = 750.06167; % conversion from mbar to mtorr

% Save? comment the following line if you do not want to save
% opt.FileName = 'plotSimpleLog2.eps'; 

% create the plot
tiledlayout(2,1)
nexttile
semilogy(stepsNitrogen, nitrogen, '-.ok','LineWidth',1,'MarkerSize',7);
grid on
xlim([1 length(nitrogen)])
ylim([min(nitrogen) max(nitrogen)])
xticks([1:numel(stepsNitrogen)])
xlabel('Step number, N')
ylabel('Pressure, mbar')
legend('Nitrogen')
% for k=1:numel(stepsNitrogen)
%       text(stepsNitrogen(k),nitrogen(k)*4.5,['(' num2str(nitrogen(k)) ')'])
% end
nexttile
semilogy(stepsFreon, freon, '-.ok','LineWidth',1,'MarkerSize',7);
grid on
xticks([1:numel(stepsFreon)])
xlabel('Step number, N')
ylabel('Pressure, mbar')
legend('Freon')