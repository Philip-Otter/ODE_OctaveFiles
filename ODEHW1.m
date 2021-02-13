1;
%Octave program for ODE HW_1
clear all
t0 = 0
t1 = input("Period of time:  ")
t2 = input("Step size:  ")
r0 = input("Rate 1:  ")
r1 = input("Rate 2:  ")
r2 = input("Rate 3:  ")
pop = input("Initial population:  ")
t = (t0:t2:t1)
plot(t,pop*exp(r2*t), "r-.",t,pop*exp(r1*t), "g--")
hold on
plot(t, pop*exp(r0*t))
xlabel("Time (days)")
ylabel("Population")
title("Population over Time")
legend("k3", "k2","k1")
hold off

