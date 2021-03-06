load('LatchAnalysis/BasicLatch/sensitivityanalysis/sensitivitydata5.mat') %
figure
axes('Position',[0.128571428571429 0.11 0.485714285714286 0.718571428571429]);
hold all
cmp=[[1:-1/10:1/10]',zeros(10,1),[1/10:1/10:1]'];
for i=1:4:20
    plot(SensitivitySweep([i:20:180],1),SensitivitySweep([i:20:180],3),'o-','Color',cmp((i-1)/2+1,:))
    plot(SensitivitySweep([i+2:20:180],1),SensitivitySweep([i+2:20:180],3),'s-','Color',cmp((i-1)/2+1,:))
end
leg=legend('Vt mismatch Mup','Vt mismatch Mupbar','Vt mismatch Mdown','Vt mismatch Mdownbar','Vt mismatch Mtop','Vt mismatch Mbottom','Vt mismatch Mpassn','Vt mismatch Mpassp','Vt mismatch Mpassnbar','Vt mismatch Mpasspbar');
set(leg,'FontWeight','bold','Position',[0.634374999999996 0.40386904761905 0.354464285714286 0.430059523809524]);
xlabel('number of \sigma s','FontWeight','bold','FontSize',14);
ylabel('Offset voltage [V]','FontWeight','bold','FontSize',14);
title('Vt-variations','FontWeight','bold','FontSize',14);
figure
axes('Position',[0.128571428571429 0.11 0.485714285714286 0.718571428571429]);
hold all
for i=2:4:20
    plot(SensitivitySweep([i:20:180],1),SensitivitySweep([i:20:180],3),'o-','Color',cmp((i-2)/2+1,:))
    plot(SensitivitySweep([i+2:20:180],1),SensitivitySweep([i+2:20:180],3),'s-','Color',cmp((i-2)/2+1,:))
end
leg=legend('\beta mismatch Mup','\beta mismatch Mupbar','\beta mismatch Mdown','\beta mismatch Mdownbar','\beta mismatch Mtop','\beta mismatch Mbottom','\beta mismatch Mpassn','\beta mismatch Mpassp','\beta mismatch Mpassnbar','\beta mismatch Mpasspbar');
set(leg,'FontWeight','bold','Position',[0.634374999999996 0.40386904761905 0.354464285714286 0.430059523809524]);
xlabel('number of \sigma s','FontWeight','bold','FontSize',14);
ylabel('Offset voltage [V]','FontWeight','bold','FontSize',14);
title('\beta-variations','FontWeight','bold','FontSize',14);

sigma_n_vt=1000*((2.82/1000))*sqrt(1e-6*1e-6)/sqrt(100e-9*45e-9)
sigma_p_vt=1000*((2.5/1000))*sqrt(1e-6*1e-6)/sqrt(100e-9*45e-9)
sigma_n_beta=100*((2/100))*sqrt(1e-6*1e-6)/sqrt(100e-9*45e-9)
sigma_p_beta=100*((1.2/100))*sqrt(1e-6*1e-6)/sqrt(100e-9*45e-9)

Sens=zeros(20,1);
for i=1:20
    temp = polyfit(SensitivitySweep([i:20:180],1),SensitivitySweep([i:20:180],3),1);
    Sens(i)= temp(1);
end

sigma_offset=sqrt(sum(Sens([1,3,9,15,19]).^2)+sum(Sens([5,7,11,13,17]).^2)+sum(Sens([2,4,10,16,20]).^2)+sum(Sens([6,8,12,14,18]).^2))