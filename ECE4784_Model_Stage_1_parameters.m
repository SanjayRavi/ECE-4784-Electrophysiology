ECE-4784-Electrophysiology
==========================
Sanjay Ravi
Georgia Tech ECE 4784
% simulation parameters
t = 0:100; %ms

% constants
g_K = 36;
g_Na = 120;
g_L = 0.3;
E_K = -12;
E_Na = 115;
E_L = 10.6;
V_rest = -70;

%Equations:
%Gating variables:
Alpha_m = 0.1 * ((25−V_m)/(exp((25−V_m)/10) − 1));
Beta_m = 4* exp(−V_m/18);
Alpha_n = .01 * ((10−V_m)/(exp((10−V_m)/10) − 1));
βeta_n = .125 * exp(−V_m/80);
Alpha_h = .07 * exp(−V_m/20);
βeta_h = 1/(exp((30−V_m)/10) + 1);

%Currents
I_Na = m^3 * g_Na * h * (V_m−E_Na);
I_K = n^4 * g_K * (V_m−E_K);
I_L = g_L * (V_m−E_L);
I_ion = I−I_K−I_Na−I_L;

$Derivatives
dV_m/dt = I_ion/C_m;
dm/dt = Alpha_m *(1−m)−βeta_m * m;
dn/dt = Aplha_n * (1−n)−βeta_n * n;
dh/dt = Alpha_h * (1−h)−βeta_h* h;

%Euler’s method
y(n+1) = y(n) + h * f(t(n),y(n));
