

%xnec=[-0.3,-0.64,-0.3];
%ynec=[0.75,0.29,-0.92];
%axis([-1 -0.3 -1 1.2])
%plot(xnec,ynec,'DisplayName','\zeta_0=0.005')
xnec=[-0.3,-0.65,-0.87,-0.62,-0.3];
ynec=[0.75,0.28,-0.1,-1,-1];
p2=fill(xnec,ynec,[55,126,34]/256,'EdgeColor','none','FaceAlpha',1);

hold on
x=[635 498 413 336 308 279 210 158 113 118 163 216 289 420];
y=[449 340 270 206 147 126 109 92 107 140 208 274 350 486];
w0=(x-630)*(1/(630-283));
wa=(200-y)*(1/(200-104));
p1=plot(w0,wa,'k--','LineWidth',2);
legend([p1 p2],{'DESI','\zeta_0=0.5'},'Location','northeast','NumColumns',2);
% alpha(1)
legend('boxoff')
xlabel('$w_0$','FontSize', 22,'interpreter','latex');ylabel('$w_a$','FontSize', 22,'interpreter','latex')
yticks([-1 -0.5 0 0.5 1])
axis([-1,-0.3 -1 1])