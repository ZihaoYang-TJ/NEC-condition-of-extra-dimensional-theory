function w0wa(omega0,zeta0,dimension)
k=dimension;
w0scope=-1:0.01:-0.3;
wascope=-1:0.01:1;
warning off
for i=1:71
    for j=1:201


w0=w0scope(i); wa=wascope(j);

%w_phi=w0+wa*z/(1+z);
[N,O] = ode45(@(t,y) -3*(w0+wa*(1-exp(t)))*y*y*(1-y),[0,log(0.1)] , omega0);
w=(w0+wa*(1-exp(N))).*O;
F=(6*k/(2+k)*(1+w)).^0.5;
all_greater_than_minus_one = all(w(:) > -1);
[N_r,O_r] = ode45(@(t,y) -3*(w0+wa*(1-exp(t)))*y*y*(1-y),[0,log(2)] , omega0);
w_r=(w0+wa*(1-exp(N_r))).*O_r;
all_greater_than_minus_one_r = all(w_r(:) > -1);
%plot(exp(N),w)
[t,y] = ode45(@(t,y) myode(t,y,N,w), [0,log(0.1)], zeta0);
[t_r,y_r] = ode45(@(t_r,y_r) myode_r(t_r,y_r,N_r,w_r), [0,log(2)],zeta0);
F_r=(6*k/(2+k)*(1+w_r)).^0.5;
        if y(end)>-F(end)
            if all_greater_than_minus_one
                if all_greater_than_minus_one_r
                    if y_r(end)<F_r(end)
            plot(w0,wa,'+k')
            hold on
                    end
                end
            end
        end
    end
end
axis([-1,-0.3,-1,1])
xlabel('$w_0$','FontSize', 22,'interpreter','latex');ylabel('$w_a$','FontSize', 22,'interpreter','latex');
x=[635 498 413 336 308 279 210 158 113 118 163 216 289 420];
y=[449 340 270 206 147 126 109 92 107 140 208 274 350 486];
w0=(x-630)*(1/(630-283));
wa=(200-y)*(1/(200-104));
plot(w0,wa,'r--')
function dydt = myode(t,y,N,w)
w = interp1(N,w,t); % Interpolate the data set (ft,f) at time t
dydt = y^2+3*(w-1)/2*y-3*k/(2+k)*(1+3*w); % Evaluate ODE at time t
end
function dy_rdt_r = myode_r(t_r,y_r,N_r,w_r)
w_r = interp1(N_r,w_r,t_r); % Interpolate the data set (ft,f) at time t
dy_rdt_r = y_r^2+3*(w_r-1)/2*y_r-3*k/(2+k)*(1+3*w_r); % Evaluate ODE at time t
end
end