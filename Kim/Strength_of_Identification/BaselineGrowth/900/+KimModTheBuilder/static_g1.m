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
    T = KimModTheBuilder.static_g1_tt(T, y, x, params);
end
g1 = zeros(8, 8);
g1(1,1)=y(6)*(-(y(2)*(T(2)*T(23)+(1-T(1))*T(27))))/((1-T(1))*T(2)*(1-T(1))*T(2))*T(28);
g1(1,2)=y(6)*T(28)*((1-T(1))*T(2)-y(2)*(1-T(1))*T(30))/((1-T(1))*T(2)*(1-T(1))*T(2))-((1-T(4))*getPowerDeriv(y(2)-T(3),(-1),1)+T(10)*(-T(6))*getPowerDeriv(y(2)-T(5),(-1),1));
g1(1,3)=y(6)*T(28)*(-(y(2)*(T(2)*(-T(31))+(1-T(1))*T(32))))/((1-T(1))*T(2)*(1-T(1))*T(2));
g1(1,6)=T(8);
g1(2,1)=y(6)*(-(y(3)*(T(2)*T(22)+T(1)*T(27))))/(T(1)*T(2)*T(1)*T(2))*T(29);
g1(2,2)=y(6)*T(29)*(-(y(3)*T(1)*T(30)))/(T(1)*T(2)*T(1)*T(2));
g1(2,3)=y(6)*T(29)*(T(1)*T(2)-y(3)*(T(2)*T(31)+T(1)*T(32)))/(T(1)*T(2)*T(1)*T(2));
g1(2,6)=T(12)-((1-T(14)-T(15))*y(7)*T(13)+T(17)*T(16)*T(10)*y(7));
g1(2,7)=(-((1-T(14)-T(15))*y(6)*T(13)+T(17)*y(6)*T(10)*T(16)));
g1(3,4)=(-(y(6)*T(10)));
g1(3,6)=y(7)-T(10)*(y(4)+y(7)*(1-params(3)));
g1(3,7)=y(6)-y(6)*T(10)*(1-params(3));
g1(4,3)=(-(T(13)*(1-T(14))));
g1(4,5)=1-(1-params(3));
g1(5,1)=1;
g1(5,5)=(-(y(8)*getPowerDeriv(T(7),params(1),1)));
g1(5,8)=(-T(18));
g1(6,4)=1;
g1(6,5)=(-(y(8)*params(1)*getPowerDeriv(T(7),params(1)-1,1)));
g1(6,8)=(-T(19));
g1(7,1)=1-T(27);
g1(7,2)=(-T(30));
g1(7,3)=(-T(32));
g1(8,8)=1/y(8)-params(6)*1/y(8);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end