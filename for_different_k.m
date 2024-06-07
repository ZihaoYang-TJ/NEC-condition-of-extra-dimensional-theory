x=[635 498 413 336 308 279 210 158 113 118 163 216 289 420];
y=[449 340 270 206 147 126 109 92 107 140 208 274 350 486];
w0=(x-630)*(1/(630-283));
wa=(200-y)*(1/(200-104));
plot(w0,wa,'k--','DisplayName','DESI','LineWidth',2)

hold on
xnec=[-0.3,-0.64,-0.3];
ynec=[0.75,0.29,-0.92];
axis([-1 -0.3 -1 1.2])
plot(xnec,ynec,'DisplayName','k=6')
xnec=[-0.3,-0.65,-0.3];
ynec=[0.77,0.31,-0.92];
plot(xnec,ynec,'DisplayName','k=3')
xnec=[-0.3,-0.64,-0.3];
ynec=[0.75,0.29,-0.9];
plot(xnec,ynec,'DisplayName','k=8')
legend('show','Location','northeast','NumColumns',2);
% alpha(1)
legend('boxoff')
xlabel('$w_0$','FontSize', 22,'interpreter','latex');ylabel('$w_a$','FontSize', 22,'interpreter','latex')
yticks([-1 -0.5 0 0.5 1])