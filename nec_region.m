x=[635 498 413 336 308 279 210 158 113 118 163 216 289 420];
y=[449 340 270 206 147 126 109 92 107 140 208 274 350 486];
w0=(x-630)*(1/(630-283));
wa=(200-y)*(1/(200-104));
plot(w0,wa,'k--','DisplayName','DESI','LineWidth',2)

hold on
xnec=[-0.3,-0.67,-0.3];
ynec=[0.84,0.42,-0.92];
%plot(xnec,ynec)
axis([-1 -0.3 -1 1.2])
fill(xnec,ynec,[55,126,34]/256,'DisplayName','\Omega_0=0.7','EdgeColor','none','FaceAlpha',1)
xnec=[-0.3,-0.78,-0.42,-0.3];
ynec=[0.93,0.37,-1,-1];
fill(xnec,ynec,[55,126,34]/256,'DisplayName','\Omega_0=0.6','EdgeColor','none','FaceAlpha',0.5)
legend('show','Location','northeast','NumColumns',2);
% alpha(1)
legend('boxoff')
xlabel('$w_0$','FontSize', 30,'interpreter','latex');ylabel('$w_a$','FontSize', 30,'interpreter','latex')