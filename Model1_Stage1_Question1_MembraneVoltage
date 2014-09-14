%ECE-4784-Electrophysiology
%==========================
%Model Stage 1 Question 1 plotting membrane voltage in steady state. 

%Sanjay Ravi
%Georgia Tech ECE 4784
% simulation parameters
t = 0:100; % Time in ms

% constants
g_K = 36; % g's in mS/cm^2
g_Na = 120;
g_L = 0.3;
E_K = -12;
E_Na = 115;
E_L = 10.6;
V_rest = -70;

%Calculating r
r = g_Na/g_K;
disp(r)

% Plotting Membrane Voltage
V_m(1:101) = V_rest; 
plot (t, V_m)
xlabel = ('Time (mSec)'); ylabel = ('Membrane Voltage (mV)');
