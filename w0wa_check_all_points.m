w0scope=-1:0.01:-0.3;
wascope=-1:0.01:1;
warning off
for i=1:71
    for j=1:201


w0=w0scope(i); wa=wascope(j);

%w_phi=w0+wa*z/(1+z);
[N,O] = ode45(@(t,y) -3*(w0+wa*(1-exp(t)))*y*y*(1-y),[0,log(0.1)] , 0.7);
w=(w0+wa*(1-exp(N))).*O;
F=(9/2*(1+w)).^0.5;
all_greater_than_minus_one = all(w(:) > -1);
[N_r,O_r] = ode45(@(t,y) -3*(w0+wa*(1-exp(t)))*y*y*(1-y),[0,log(2)] , 0.7);
w_r=(w0+wa*(1-exp(N_r))).*O_r;
all_greater_than_minus_one_r = all(w_r(:) > -1);
%plot(exp(N),w)
[t,y] = ode45(@(t,y) myode(t,y,N,w), [0,log(0.1)], 0.00614);
        if y(end)>-F(end)
            if all_greater_than_minus_one
                if all_greater_than_minus_one_r
            plot(w0,wa,'+k')
            hold on
                end
            end
        end
    end
end
axis([-1,-0.3,-1,1])
xlabel('$w_0$','interpreter','latex');ylabel('$w_a$','interpreter','latex')


%[N,O] = ode45(@(t,y) -3*(w0+wa*(1-exp(t)))*y*y*(1-y),[0,log(2)] , 0.7);
%w=(w0+wa*(1-exp(N))).*O;
%plot(exp(N),w)
%[t,y] = ode45(@(t,y) myode(t,y,N,w), [0,log(2)], 0.00614);
%F=(9/2*(1+w)).^0.5;
function dydt = myode(t,y,N,w)
w = interp1(N,w,t); % Interpolate the data set (ft,f) at time t
dydt = y^2+3*(w-1)/2*y-9/4*(1+3*w); % Evaluate ODE at time t
end