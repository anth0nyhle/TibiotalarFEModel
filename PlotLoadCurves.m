clc; clear; close all;

%%
plotlc("./grf_profile.csv", "Time (s)", "Ground Reaction Force");
plotlc("./dpf_profile.csv", "Time (s)", "Dorsiflexion (+)/Plantarflexion (-)");

%%
function load_curve = plotlc(curve, xlab, ylab)

arguments
    curve
    xlab
    ylab
end

data = readmatrix(curve);

load_curve = figure();
hold on;
plot(data(:, 1), data(:, 2), "-or", "LineWidth", 1.5);
xlabel(xlab);
ylabel(ylab);
xlim([0 7])
set(gcf, "Position", [100 100 600 400]);
hold off;

end