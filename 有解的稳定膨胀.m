w=linspace(-0.53,-1/3);

o=(18*(w-1).^2+9*(3*w.^2+42*w+19)/5);
t=0.25*(3-3*w+o.^0.5);
tt=0.25*(3-3*w-o.^0.5);
f=(18/5*(1+w)).^0.5;
ff=-f;
p5=fill([w,flip(w)],[f,flip(tt)],[0.4660 0.6740 0.1880],'FaceAlpha',.3,EdgeColor='none');
hold on
p1=plot(w,t,'k',LineWidth=2);
p2=plot(w,f,'r',LineWidth=2);
p3=plot(w,tt,'k',w,ff,'r',LineWidth=2);
xlabel('w')
ylabel('\zeta')
legend([p1 p2 p5],{'T^\pm','\pm F','稳定加速膨胀'})
axis([-0.55 -0.3 -2 3])