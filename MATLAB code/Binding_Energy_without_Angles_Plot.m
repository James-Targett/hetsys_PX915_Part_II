clc; clear;

Data_M1=load('M1_Binding_Energy_without_Angles.txt');
Distance_M1 = Data_M1(:,7);
BE_M1 = Data_M1(:,4);

Data_M2=load('M2_Binding_Energy_without_Angles.txt');
Distance_M2 = Data_M2(:,7);
BE_M2 = Data_M2(:,4);

plot(Distance_M1,BE_M1,Distance_M2,BE_M2,'LineWidth',2)

xlim([1.8 3.0]);
ylim([-1.6 0.0]);

legend('meta','para','FontSize',12,'Location','north')
xlabel('Distance (Angstrom)','FontSize', 12);
ylabel('Binding Energy (eV)','FontSize', 12);
set(gca,'fontsize',12)
set(gca,'fontsize',12, 'LineWidth',2)

hold off
