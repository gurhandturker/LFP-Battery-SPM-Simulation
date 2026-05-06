% --- Equilibrium Potential (OCV) Vectors ---
% Calculated using empirical equations from the Appendix of the reference article 
% (Zhang et al., 2014).

% 1. Lithium Stoichiometry Vector
% Bounded between 0.01 and 0.99 to avoid mathematical singularities.
x_vec = linspace(0.01, 0.99, 50);

% 2. Anode Equilibrium Potential (MCMB)
% Reference: Zhang et al. (2014) - Equation A21
U_anode = 0.6379 + 0.5416*exp(-305.5309.*x_vec) + 0.044*tanh(-(x_vec-0.1958)./0.1088) - 0.1978*tanh((x_vec-1.0571)./0.0854) - 0.6875*tanh((x_vec+0.0117)./0.0529) - 0.0175*tanh((x_vec-0.5692)./0.0875);

% 3. Cathode Equilibrium Potential (LFP)
% Reference: Zhang et al. (2014) - Equation A22
y = x_vec; 
U_cathode = 3.4323 - 0.8428*exp(-80.2493.*(1-y).^1.3198) - 3.2474e-6*exp(20.2645.*(1-y).^3.8003) + 3.2482e-6*exp(20.2646.*(1-y).^3.7995);