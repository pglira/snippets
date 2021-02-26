clc; clear; close;

% Generate observations
rGT = [1:0.2:40]';

noPts = numel(rGT);

dr = 0.02;
mr = 1.005;
rObs = (rGT - dr)/mr + 0.02*randn(noPts,1);

% plot(rGT, rGT-rObs, 'o');

% Create an optimization problem
problem = optimproblem;

% Define the unknowns as optimization variables
dr = optimvar('dr');
mr = optimvar('mr');

% Define the initial values of the unknowns
x0.dr = 0;
x0.mr = 1;

% Predicted r values
rPre = (rGT - dr)/mr;

% Evaluate predicted r values at point x0
evaluate(rPre, x0);

% Define the residuals
v = rPre - rObs;

% Define the objective function, i.e. the sum of squared residuals
% Do not use v'*v here!!! (in that case the optimzation is not recognized as ls optimization)
problem.Objective = sum(v.^2);

% Options
options = optimoptions(problem);
options.Display = 'iter-detailed';
% options.PlotFcn = {'optimplotx' 'optimplotfunccount' 'optimplotfval' 'optimplotresnorm' 'optimplotstepsize' 'optimplotfirstorderopt'};

% Solve the optimization problem!
[solution, fval, exitflag, output, lambda] = solve(problem, x0, 'Options', options);

% Residuals
residuals = evaluate(v, solution);

% Solve directly with lsqnonlin to get also the jacobian
% https://de.mathworks.com/matlabcentral/answers/749944-get-jacobian-when-using-problem-based-approach-in-optimization-toolbox?s_tid=srchtitle
problemStruct = prob2struct(problem, solution); % use solution as x0
problemStruct.options = options;

[~, ~, ~, ~, ~, ~, jacobian] = lsqnonlin(problemStruct);