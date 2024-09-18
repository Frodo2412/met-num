n = 20; % Tomamos 20 puntos

resta = zeros(1,n);
succ = ones(1,n);
kas = ones(1,n);
es = e * ones(1,n);

for k = 1:n-1
  kas(k+1) = k+1;
  resta(k+1) = (k + 1) * succ(k);
  succ(k+1) = e - resta(k+1);
end

% Print out the values of kas, resta, and succ grouped by k value
disp('k    kas    resta    succ');
disp('-------------------------');
for k = 1:n
  fprintf('%-4d %-6.2f %-8.2f %-8.2f\n', k, kas(k), resta(k), succ(k));
end

% Plotting all three vectors on the same axes
plot(kas, resta, 'r', 'DisplayName', 'resta'); % Plot resta in red
hold on;
plot(kas, succ, 'g', 'DisplayName', 'succ');   % Plot succ in green
plot(kas, es, 'b', 'DisplayName', 'es');       % Plot es in blue

xlabel('k');
ylabel('Values');
legend('show'); % Display legend to identify each vector
hold off;

