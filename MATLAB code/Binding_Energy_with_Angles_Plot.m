clc; clear;

Data_M1=load('M1_Binding_Energy_with_Angles.txt');
Angle_M1 = Data_M1(:,8);
BE_M1 = Data_M1(:,4);

Data_M2=load('M2_Binding_Energy_with_Angles.txt');
Angle_M2 = Data_M2(:,8);
BE_M2 = Data_M2(:,4);

plot(Angle_M1,BE_M1,Angle_M2,BE_M2,'LineWidth',2)

xlim([110 180]);
ylim([-1.6 0.0]);

legend('meta','para','FontSize',12,'Location','north')
xlabel('Angle (degree)','FontSize', 12);
ylabel('Binding Energy (eV)','FontSize', 12);
set(gca,'fontsize',12)
set(gca,'fontsize',12, 'LineWidth',2)

hold off
