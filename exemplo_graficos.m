%Ex1 plotando grafico função seno

x = -10:0.1:10; # Create an evenly-spaced vector from -10..10
y = sin (x);    # y is also a vector
plot (x, y);
title ("Simple 2-D Plot");
xlabel ("x");
ylabel ("sin (x)");

% Lendo the training set
data = load('examples.txt');

% initialize Matrices and Variables
X = data(:, 1);     % featue matrix
y = data(:, 2);     % results matrix
m = length(y);      % number of training examples


% Plotando o grafico 
plot(X, y, 'rx', 'MarkerSize', 10);
title('Training Examples');
xlabel('Population em 10,000');
ylabel('Renda em $10,000');data