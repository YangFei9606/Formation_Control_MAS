close all;
num_agent=4;
cheby_order=3;
dimension=3;

%% agent 1

%% position error
figure(1)
grid on;
hold on;
plot(tout,Position_agents(:,dimension*1-1)-ref_x1(:,dimension*1-1),'r');
plot(tout,Position_agents(:,dimension*1)-ref_x1(:,dimension*1),'b');
plot(tout,Position_agents(:,dimension*1+1)-ref_x1(:,dimension*1+1),'m');

xlabel('Time(Seconds)');
ylabel('Tracking Error');
legend('\delta_x(m)', '\delta_y(m)', '\delta_\theta(rad)');

%% compensated control output
figure(2)
grid on;
hold on;
plot(tout,comp_ctr_1(:,2),'r');
plot(tout,comp_ctr_1(:,3),'b');
plot(tout,comp_ctr_1(:,4),'m');

xlabel('Time(Seconds)');
ylabel('Voltage(V)');
legend('u_1','u_2','u_3');

%% real control output to actuator
% figure(3)
% grid on;
% hold on;
% plot(tout,real_ctr_1(:,2),'r');
% plot(tout,real_ctr_1(:,3),'b');
% plot(tout,real_ctr_1(:,4),'m');
% 
% xlabel('Time(Seconds)');
% ylabel('Voltage(V)');
% legend('Resulted Control 1','Resulted Control 2','Resulted Control 3');

%% Neural Estimation Error
figure(4)
grid on;
hold on;
plot(tout,esti_error_1(:,2),'r');
plot(tout,esti_error_1(:,3),'b');
plot(tout,esti_error_1(:,4),'m');

xlabel('Time(Seconds)');
ylabel('Estimation Error');
h1=legend('$$\widetilde{E}_1$$','$$\widetilde{E}_2$$','$$\widetilde{E}_3$$');
set(h1,'interpreter','latex');

%% agent 2

%% position error
figure(5)
grid on;
hold on;
plot(tout,Position_agents(:,dimension*2-1)-ref_x1(:,dimension*2-1),'r');
plot(tout,Position_agents(:,dimension*2)-ref_x1(:,dimension*2),'b');
plot(tout,Position_agents(:,dimension*2+1)-ref_x1(:,dimension*2+1),'m');

xlabel('Time(Seconds)');
ylabel('Tracking Error');
legend('\delta_x(m)', '\delta_y(m)', '\delta_\theta(rad)');

%% compensated control output
figure(6)
grid on;
hold on;
plot(tout,comp_ctr_2(:,2),'r');
plot(tout,comp_ctr_2(:,3),'b');
plot(tout,comp_ctr_2(:,4),'m');

xlabel('Time(Seconds)');
ylabel('Voltage(V)');
legend('u_1','u_2','u_3');

%% real control output to actuator
% figure(7)
% grid on;
% hold on;
% plot(tout,real_ctr_2(:,2),'r');
% plot(tout,real_ctr_2(:,3),'b');
% plot(tout,real_ctr_2(:,4),'m');
% 
% xlabel('Time(Seconds)');
% ylabel('Voltage(V)');
% legend('Resulted Control 1','Resulted Control 2','Resulted Control 3');


%% Neural Estimation Error
figure(8)
grid on;
hold on;
plot(tout,esti_error_2(:,2),'r');
plot(tout,esti_error_2(:,3),'b');
plot(tout,esti_error_2(:,4),'m');

xlabel('Time(Seconds)');
ylabel('Estimation Error');
h2=legend('$$\widetilde{E}_1$$','$$\widetilde{E}_2$$','$$\widetilde{E}_3$$');
set(h2,'interpreter','latex');


%% agent 3

%% position error
figure(9)
grid on;
hold on;
plot(tout,Position_agents(:,dimension*3-1)-ref_x1(:,dimension*3-1),'r');
plot(tout,Position_agents(:,dimension*3)-ref_x1(:,dimension*3),'b');
plot(tout,Position_agents(:,dimension*3+1)-ref_x1(:,dimension*3+1),'m');

xlabel('Time(Seconds)');
ylabel('Tracking Error');
legend('\delta_x(m)', '\delta_y(m)', '\delta_\theta(rad)');

%% compensated control output
figure(10)
grid on;
hold on;
plot(tout,comp_ctr_3(:,2),'r');
plot(tout,comp_ctr_3(:,3),'b');
plot(tout,comp_ctr_3(:,4),'m');

xlabel('Time(Seconds)');
ylabel('Voltage(V)');
legend('u_1','u_2','u_3');

%% real control output to actuator
% figure(11)
% grid on;
% hold on;
% plot(tout,real_ctr_3(:,2),'r');
% plot(tout,real_ctr_3(:,3),'b');
% plot(tout,real_ctr_3(:,4),'m');
% 
% xlabel('Time(Seconds)');
% ylabel('Voltage(V)');
% legend('Resulted Control 1','Resulted Control 2','Resulted Control 3');


%% Neural Estimation Error
figure(12)
grid on;
hold on;
plot(tout,esti_error_3(:,2),'r');
plot(tout,esti_error_3(:,3),'b');
plot(tout,esti_error_3(:,4),'m');

xlabel('Time(Seconds)');
ylabel('Estimation Error');
h3=legend('$$\widetilde{E}_1$$','$$\widetilde{E}_2$$','$$\widetilde{E}_3$$');
set(h3,'interpreter','latex');

%% agent 4

%% position error
figure(13)
grid on;
hold on;
plot(tout,Position_agents(:,dimension*4-1)-ref_x1(:,dimension*4-1),'r');
plot(tout,Position_agents(:,dimension*4)-ref_x1(:,dimension*4),'b');
plot(tout,Position_agents(:,dimension*4+1)-ref_x1(:,dimension*4+1),'m');

xlabel('Time(Seconds)');
ylabel('Tracking Error');
legend('\delta_x(m)', '\delta_y(m)', '\delta_\theta(rad)');

%% compensated control output
figure(14)
grid on;
hold on;
plot(tout,comp_ctr_4(:,2),'r');
plot(tout,comp_ctr_4(:,3),'b');
plot(tout,comp_ctr_4(:,4),'m');

xlabel('Time(Seconds)');
ylabel('Voltage(V)');
legend('u_1','u_2','u_3');

%% real control output to actuator
% figure(15)
% grid on;
% hold on;
% plot(tout,real_ctr_4(:,2),'r');
% plot(tout,real_ctr_4(:,3),'b');
% plot(tout,real_ctr_4(:,4),'m');
% 
% xlabel('Time(Seconds)');
% ylabel('Voltage(V)');
% legend('Resulted Control 1','Resulted Control 2','Resulted Control 3');

%% Neural Estimation Error
figure(16)
grid on;
hold on;
plot(tout,esti_error_4(:,2),'r');
plot(tout,esti_error_4(:,3),'b');
plot(tout,esti_error_4(:,4),'m');

xlabel('Time(Seconds)');
ylabel('Estimation Error');
h4=legend('$$\widetilde{E}_1$$','$$\widetilde{E}_2$$','$$\widetilde{E}_3$$');
set(h4,'interpreter','latex');


figure(17)
grid on;
hold on;
plot(tout,Xi_1(:,2),'r');
plot(tout,Xi_1(:,3),'b');
plot(tout,Xi_1(:,4),'m');
xlabel('Time(Seconds)');
ylabel('Sliding Variable');
legend('\xi_1','\xi_2','\xi_3');

figure(18)
grid on;
hold on;
plot(tout,Xi_2(:,2),'r');
plot(tout,Xi_2(:,3),'b');
plot(tout,Xi_2(:,4),'m');
xlabel('Time(Seconds)');
ylabel('Sliding Variable');
legend('\xi_1','\xi_2','\xi_3');

figure(19)
grid on;
hold on;
plot(tout,Xi_3(:,2),'r');
plot(tout,Xi_3(:,3),'b');
plot(tout,Xi_3(:,4),'m');
xlabel('Time(Seconds)');
ylabel('Sliding Variable');
legend('\xi_1','\xi_2','\xi_3');

figure(20)
grid on;
hold on;
plot(tout,Xi_4(:,2),'r');
plot(tout,Xi_4(:,3),'b');
plot(tout,Xi_4(:,4),'m');
xlabel('Time(Seconds)');
ylabel('Sliding Variable');
legend('\xi_1','\xi_2','\xi_3');

