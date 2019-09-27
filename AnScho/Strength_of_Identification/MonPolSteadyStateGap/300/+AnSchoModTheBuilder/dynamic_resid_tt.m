function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 24);

T(1) = 1+params(2)/400;
T(2) = y(9)^(-params(4));
T(3) = 1;
T(4) = y(15)^(-params(4));
T(5) = 1;
T(6) = T(2)*T(3);
T(7) = 1/(1+params(1)/400);
T(8) = T(4)*T(5);
T(9) = 1+params(3)/100;
T(10) = (steady_state(7));
T(11) = (steady_state(7));
T(12) = (steady_state(6))*(y(11)/T(1))^params(6)*(y(8)/(steady_state(4)))^params(7);
T(13) = 1/params(15);
T(14) = y(8)/(steady_state(4));
T(15) = T(8)/T(6)*y(14)/y(8);
T(16) = T(15)*(y(16)-T(11));
T(17) = params(14)/2*(y(11)-T(10))^2;
T(18) = T(12)^(1-params(8));
T(19) = y(2)^params(8);
T(20) = exp(params(11)/100*x(it_, 1));
T(21) = y(1)/(steady_state(4));
T(22) = y(13)/(steady_state(9));
T(23) = y(11)/(steady_state(7));
T(24) = y(10)/(steady_state(6));

end