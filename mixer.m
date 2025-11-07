function x = mixer(F, M)
% Converts motor velocities to physical forces and moments
% See https://wilselby.com/research/arducopter/controller-design/ for info

K_T = 0.1; % got to change
K_D = 0.01; % got to change

y = [F, M];

A = [ 0, 0, 0, 0;
      0, 0, 0, 0;
      K_T,  K_T,   K_T,   K_T;
      a*K_T, -a*K_T,  a*K_T, -a*K_T;
     -b*K_T, -b*K_T,  b*K_T,  b*K_T;
     -K_D,   K_D,   -K_D,   K_D ];

x = A\y;

end