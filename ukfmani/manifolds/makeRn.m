% euclidean
%
% Emanuele Ruffaldi 2017 @ SSSA
function m = makeRn(n)


m = [];
m.type = {'Rn',n};
m.inv = @(x) -x;
m.prod = @(x,y) x+y;
m.log = @(x) x;
m.exp = @(x) x(:)';
m.meancov = @meancov;
m.delta = @(x,y) x-y;
m.step = @(x,y) x+y;
m.group = n;
m.alg = n;
m.transport = @(X,t,Y) t;
m.count = 1;
m.pack = @(x) x;
m.unpack = @(x) x;
m.islie = 1;
m.s = int_manisetup([],[],m);
function [m,C] = meancov(x)

m = mean(x);
C = cov(x);
