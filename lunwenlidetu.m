w0=-1; wa=0;

%w_phi=w0+wa*z/(1+z);
[N,O] = ode45(@(t,y) -3*(w0+wa*(1-exp(t)))*y*y*(1-y),[0,log(0.01)] , 0.7);
w=(w0+wa*(1-exp(N))).*O;
%plot(exp(N),w)
[t,y] = ode45(@(t,y) myode(t,y,N,w), [0,log(0.01)], 0.00614);

a=exp(t);
p1=plot(a-1,y,'b',LineWidth=2);
xlabel('a','FontSize', 12);ylabel('\zeta','FontSize', 12)
yticks([-4 -2 0 2 4])
xticks([0 0.5 1 1.5 2])
hold on
F=(9/2*(1+w)).^0.5;
plot(exp(N)-1,F,'k',LineWidth=2)
plot(exp(N)-1,-F,'k',LineWidth=2)

% plot(exp(N),w)
% xlabel('a')
% ylabel('w')
axis([-1.2,1.1,-4,4])

[N,O] = ode45(@(t,y) -3*(w0+wa*(1-exp(t)))*y*y*(1-y),[0,log(2)] , 0.7);
w=(w0+wa*(1-exp(N))).*O;
%plot(exp(N),w)
[t,y] = ode45(@(t,y) myode(t,y,N,w), [0,log(2)], 0.00614);
a=exp(t);
plot(a-1,y,'b',LineWidth=2)
F=(9/2*(1+w)).^0.5;
p3=plot(exp(N)-1,F,'k',LineWidth=2);
plot(exp(N)-1,-F,'k',LineWidth=2)

set(gca,'XAxisLocation','origin')
set(gca,'YAxisLocation','origin')

w0=-0.4; wa=0.1;
%w_phi=w0+wa*z/(1+z);
[N,O] = ode45(@(t,y) -3*(w0+wa*(1-exp(t)))*y*y*(1-y),[0,log(0.01)] , 0.7);
w=(w0+wa*(1-exp(N))).*O;
%plot(exp(N),w)
[t,y] = ode45(@(t,y) myode(t,y,N,w), [0,log(0.01)], 0.00614);
a=exp(t);
plot(a-1,y,'r',LineWidth=2)
[N,O] = ode45(@(t,y) -3*(w0+wa*(1-exp(t)))*y*y*(1-y),[0,log(1.8)] , 0.7);
w=(w0+wa*(1-exp(N))).*O;
%plot(exp(N),w)
[t,y] = ode45(@(t,y) myode(t,y,N,w), [0,log(1.8)], 0.00614);
a=exp(t);
p2=plot(a-1,y,'r',LineWidth=2);


legend([p1 p2,p3],{'w_0=-1 w_a=0','w_0=-0.4 w_a=0.1','\pm F'},'FontSize', 12)
xticks([-1  1])
xticklabels({'0','2'})

box off
legend boxoff;







function dydt = myode(t,y,N,w)
w = interp1(N,w,t); % Interpolate the data set (ft,f) at time t
dydt = y^2+3*(w-1)/2*y-9/4*(1+3*w); % Evaluate ODE at time t
end