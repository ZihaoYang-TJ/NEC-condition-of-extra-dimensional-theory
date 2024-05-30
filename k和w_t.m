for k=3:8
w_t=(6-21*k+8*sqrt(6*(k^2-k)))./(3*(k+2));
plot(k,w_t,'b.', 'MarkerSize', 15)
hold on
end
axis([3,8,-1,-0.3])
xlabel('k')
ylabel('w')