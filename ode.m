w0=-0.6; wa=0;





i=1;
%w_phi=w0+wa*z/(1+z);
[N,O] = ode45(@(t,y) -3*(w0+wa(i)*(1-exp(t)))*y*y*(1-y),[0,log(0.01)] , 0.7);
w=(w0+wa(i)*(1-exp(N))).*O;
%plot(exp(N),w)
[t,y] = ode45(@(t,y) myode(t,y,N,w), [0,log(0.01)], 0.00614);




a=exp(t);
plot(a,y)
xlabel('a');ylabel('\zeta')
hold on
 F=(9/2*(1+w)).^0.5;
 plot(exp(N),F,'r')
 plot(exp(N),-F,'r')
hold off
% plot(exp(N),w)
% xlabel('a')
% ylabel('w')
axis([0.1,1,-10,10])


function dydt = myode(t,y,N,w)
w = interp1(N,w,t); % Interpolate the data set (ft,f) at time t
dydt = y^2+3*(w-1)/2*y-9/4*(1+3*w); % Evaluate ODE at time t
end