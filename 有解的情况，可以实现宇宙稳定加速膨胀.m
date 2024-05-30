w=linspace(-0.53,-1/3);
w=linspace(-0.6,-1/3);
o=(18*(w-1).^2+9*(3*w.^2+42*w+19)/5);
t=0.25*(3-3*w+o.^0.5);
tt=0.25*(3-3*w-o.^0.5);
plot(w,t,w,tt)
f=(18/5*(1+w)).^0.5;
ff=-f;
plot(w,t,'k','DisplayName', '\pm F')
hold on 
plot(w,f,'r','DisplayName', 'T^\pm')
legend show;
plot(w,tt,'k',w,ff,'r')
xlabel('w')
ylabel('\zeta')
