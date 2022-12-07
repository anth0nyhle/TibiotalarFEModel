clc; clear; close all;

%%
congt_cp = readmatrix("./congruent_contactpress.csv");
incongt_cp = readmatrix("./incongruent_contactpress.csv");

figure();
hold on;
plot(congt_cp(1:20:end, 1), congt_cp(1:20:end, 2), "-or", "LineWidth", 1.5, "MarkerSize", 10);
plot(congt_cp(1:20:end, 3), congt_cp(1:20:end, 4), "-xr", "LineWidth", 1.5, "MarkerSize", 10);
plot(congt_cp(1:20:end, 5), congt_cp(1:20:end, 6), "-sr", "LineWidth", 1.5, "MarkerSize", 10);
plot(incongt_cp(1:20:end, 1), incongt_cp(1:20:end, 2), "-ob", "LineWidth", 1.5, "MarkerSize", 10);
plot(incongt_cp(1:20:end, 3), incongt_cp(1:20:end, 4), "-xb", "LineWidth", 1.5, "MarkerSize", 10);
xlabel("Time (s)");
ylabel("Contact Pressure (MPa)")
legend("Congruent Healthy", "Congruent Early OA", "Congruent Advanced OA", "Incongruent Healthy", "Incongruent Early OA");
set(gcf, "Position", [100 100 1200 600]);
hold off;

%%
maxshear = readmatrix("./maxshearstress.csv");

figure();
hold on;
plot(maxshear(1:20:end, 1), maxshear(1:20:end, 2), "-or", "LineWidth", 1.5, "MarkerSize", 10);
plot(maxshear(1:20:end, 3), maxshear(1:20:end, 4), "-xr", "LineWidth", 1.5, "MarkerSize", 10);
plot(maxshear(1:20:end, 5), maxshear(1:20:end, 6), "-sr", "LineWidth", 1.5, "MarkerSize", 10);
plot(maxshear(1:20:end, 7), maxshear(1:20:end, 8), "-ob", "LineWidth", 1.5, "MarkerSize", 10);
plot(maxshear(1:20:end, 9), maxshear(1:20:end, 10), "-xb", "LineWidth", 1.5, "MarkerSize", 10);
xlabel("Time (s)");
ylabel("Max Shear Stress (Pa)")
legend("Congruent Healthy", "Congruent Early OA", "Congruent Advanced OA", "Incongruent Healthy", "Incongruent Early OA");
set(gcf, "Position", [100 100 1200 600]);
hold off;

%%
fls = readmatrix("./fluidloadsupport.csv");

figure();
hold on;
plot(fls(1:20:end, 1), fls(1:20:end, 2), "-or", "LineWidth", 1.5, "MarkerSize", 10);
plot(fls(1:20:end, 3), fls(1:20:end, 4), "-xr", "LineWidth", 1.5, "MarkerSize", 10);
plot(fls(1:20:end, 5), fls(1:20:end, 6), "-sr", "LineWidth", 1.5, "MarkerSize", 10);
plot(fls(1:20:end, 7), fls(1:20:end, 8), "-ob", "LineWidth", 1.5, "MarkerSize", 10);
plot(fls(1:20:end, 9), fls(1:20:end, 10), "-xb", "LineWidth", 1.5, "MarkerSize", 10);
xlabel("Time (s)");
ylabel("Fluid Load Support")
legend("Congruent Healthy", "Congruent Early OA", "Congruent Advanced OA", "Incongruent Healthy", "Incongruent Early OA", "Location", "best");
set(gcf, "Position", [100 100 1200 600]);
hold off;

%%
pss = readmatrix("./solidstress.csv");

figure();
subplot(1, 3, 1);
hold on;
plot(pss(:, 1), pss(:, 2), 'r', "LineWidth", 1.5);
plot(pss(:, 1), pss(:, 3), 'g', "LineWidth", 1.5);
plot(pss(:, 1), pss(:, 4), 'b', "LineWidth", 1.5);
xlabel("Time (s)");
ylabel("3rd Principal Solid Stress (MPa)");
legend("Bottom", "Middle", "Top");
xlim([0 7]);
ylim([-1.2 0]);
hold off;

subplot(1, 3, 2);
hold on;
plot(pss(:, 5), pss(:, 6), 'r', "LineWidth", 1.5);
plot(pss(:, 5), pss(:, 7), 'g', "LineWidth", 1.5);
plot(pss(:, 5), pss(:, 8), 'b', "LineWidth", 1.5);
xlabel("Time (s)");
% ylabel("3rd Principal Solid Stress (MPa)");
legend("Bottom", "Middle", "Top");
xlim([0 7]);
ylim([-1.2 0]);
hold off;

subplot(1, 3, 3);
hold on;
plot(pss(:, 9), pss(:, 10), 'r', "LineWidth", 1.5);
plot(pss(:, 9), pss(:, 11), 'g', "LineWidth", 1.5);
plot(pss(:, 9), pss(:, 12), 'b', "LineWidth", 1.5);
xlabel("Time (s)");
% ylabel("3rd Principal Solid Stress (MPa)");
legend("Bottom", "Middle", "Top");
xlim([0 7]);
ylim([-1.2 0]);
hold off;
set(gcf, "Position", [100 100 1200 600]);
