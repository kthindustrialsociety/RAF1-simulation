function [F, M] = mixer(x)
% Converts motor velocities to physical forces and moments
% See https://wilselby.com/research/arducopter/controller-design/ for info

K_T = 0.1; % got to change
K_D = 0.01; % got to change

A = [ 0, 0, 0, 0;
      0, 0, 0, 0;
      K_T,  K_T,   K_T,   K_T;
      a*K_T, -a*K_T,  a*K_T, -a*K_T;
     -b*K_T, -b*K_T,  b*K_T,  b*K_T;
     -K_D,   K_D,   -K_D,   K_D ];

y = A*x;

F = y(1:3, :);
M = y(4:6, :);

end