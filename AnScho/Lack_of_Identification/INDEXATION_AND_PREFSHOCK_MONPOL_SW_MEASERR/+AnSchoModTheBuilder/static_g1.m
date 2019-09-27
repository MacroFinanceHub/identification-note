function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = AnSchoModTheBuilder.static_g1_tt(T, y, x, params);
end
g1 = zeros(10, 10);
g1(1,5)=y(10)*T(37)-y(6)*T(8)*T(6)*T(37)/y(7)/(T(10)*y(9));
g1(1,6)=(-(T(8)*T(9)/y(7)/(T(10)*y(9))));
g1(1,7)=(-((-(y(6)*T(8)*T(9)))/(y(7)*y(7))/(T(10)*y(9))));
g1(1,9)=(-((-(y(6)*T(8)*T(9)/y(7)*T(10)))/(T(10)*y(9)*T(10)*y(9))));
g1(1,10)=T(4)-y(6)*T(5)*T(8)/y(7)/(T(10)*y(9));
g1(2,5)=(-(T(15)*(-(T(38)*T(39)))-T(8)*params(15)*y(7)*T(41)));
g1(2,7)=(-(params(15)*(y(7)-T(11))+y(7)*params(15)*T(45)-params(15)/(2*params(5))*T(45)*2*(y(7)-T(11))-T(8)*params(15)*(T(18)+y(7)*T(17)*T(45))));
g1(2,10)=(-(T(15)*(-(T(39)*T(56)))-T(8)*params(15)*y(7)*T(58)));
g1(3,4)=1-T(16)*params(15)/2-(1-1/y(8));
g1(3,5)=(-1);
g1(3,7)=(-(y(4)*params(15)/2*T(45)*2*(y(7)-T(11))));
g1(3,8)=(-(y(4)*(-T(48))));
g1(4,4)=(-(T(21)*T(20)*T(35)*T(36)));
g1(4,6)=1-T(21)*(T(20)*T(36)*T(30)*T(26)*T(27)+T(19)*T(42));
g1(4,7)=(-(T(21)*T(20)*T(36)*T(30)*T(27)*T(47)));
g1(4,8)=(-(T(21)*T(20)*T(36)*T(55)));
g1(5,8)=1/y(8)-1/y(8)*params(10);
g1(6,9)=1/y(9)-params(11)*1/y(9);
g1(7,10)=1/y(10)-params(18)*1/y(10);
g1(8,1)=1;
g1(8,9)=(-(100*((y(9))-y(9))/((y(9))*(y(9)))/T(22)));
g1(9,2)=1;
g1(9,7)=(-(400*((y(7))-y(7))/((y(7))*(y(7)))/T(23)));
g1(10,3)=1;
g1(10,6)=(-(400*((y(6))-y(6))/((y(6))*(y(6)))/T(24)));
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end