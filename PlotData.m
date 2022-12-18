clc; clear; close all;

%%
plotdatagrp("./contactpressure.csv", "Time (s)", "Contact Pressure (MPa)")
plotdatagrp("./effectfrictioncoeff.csv", "Time (s)", "Effective Friction Coefficient")
plotdatagrp("./maxshearstress.csv", "Time (s)", "Max Shear Stress (Pa)")
plotdatagrp("./effectfluidpressure.csv", "Time (s)", "Effective Fluid Pressure (MPa)")
plotsolidstress("./solidstress_congruent.csv")
plotsolidstress("./solidstress_incongruent.csv")


%%
function datafig = plotdatagrp(data_file, xlab, ylab)

arguments
    data_file
    xlab
    ylab
end

data = readmatrix(data_file);

datafig = figure();
hold on;
plot(data(1:20:end, 1), data(1:20:end, 2), "-or", "LineWidth", 1.5, "MarkerSize", 10);
plot(data(1:20:end, 3), data(1:20:end, 4), "-xr", "LineWidth", 1.5, "MarkerSize", 10);
plot(data(1:20:end, 5), data(1:20:end, 6), "-sr", "LineWidth", 1.5, "MarkerSize", 10);
plot(data(1:20:end, 7), data(1:20:end, 8), "-ob", "LineWidth", 1.5, "MarkerSize", 10);
plot(data(1:20:end, 9), data(1:20:end, 10), "-xb", "LineWidth", 1.5, "MarkerSize", 10);
plot(data(1:20:end, 11), data(1:20:end, 12), "-sb", "LineWidth", 1.5, "MarkerSize", 10);
xlabel(xlab);
ylabel(ylab);
legend("Congruent Healthy", "Congruent Early OA", "Congruent Advanced OA", "Incongruent Healthy", "Incongruent Early OA", "Incongruent Advanced OA", "Location", "best");
set(gcf, "Position", [100 100 1200 600]);
hold off;

end

%%
function pssfig = plotsolidstress(data_file)

arguments
    data_file
end

data = readmatrix(data_file);

pssfig = figure();
subplot(1, 3, 1);
hold on;
plot(data(:, 1), data(:, 2), 'r', "LineWidth", 1.5);
plot(data(:, 1), data(:, 3), 'g', "LineWidth", 1.5);
plot(data(:, 1), data(:, 4), 'b', "LineWidth", 1.5);
xlabel("Time (s)");
ylabel("3rd Principal Solid Stress (MPa)");
legend("Bottom", "Middle", "Top");
xlim([0 7]);
ylim([-1.2 0]);
hold off;

subplot(1, 3, 2);
hold on;
plot(data(:, 5), data(:, 6), 'r', "LineWidth", 1.5);
plot(data(:, 5), data(:, 7), 'g', "LineWidth", 1.5);
plot(data(:, 5), data(:, 8), 'b', "LineWidth", 1.5);
xlabel("Time (s)");
% ylabel("3rd Principal Solid Stress (MPa)");
legend("Bottom", "Middle", "Top");
xlim([0 7]);
ylim([-1.2 0]);
hold off;

subplot(1, 3, 3);
hold on;
plot(data(:, 9), data(:, 10), 'r', "LineWidth", 1.5);
plot(data(:, 9), data(:, 11), 'g', "LineWidth", 1.5);
plot(data(:, 9), data(:, 12), 'b', "LineWidth", 1.5);
xlabel("Time (s)");
% ylabel("3rd Principal Solid Stress (MPa)");
legend("Bottom", "Middle", "Top");
xlim([0 7]);
ylim([-1.2 0]);
hold off;
set(gcf, "Position", [100 100 1200 600]);

end
