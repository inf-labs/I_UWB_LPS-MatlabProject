close all;
clc;

%load data file path
Data=load('E:\INF\INF_Code\Matlab_Code\I_UWB_LPS\data\infExportData_I_UWB_LPS_Tag_Data_Frame0_20180531_000810.txt');

N=size(Data,1);
t=(1:N);
t=t';

%sample period 
T = 0.02;  %uint: s

%anchor_coordinate
ac = [0,0,1; 
     0,6,1;
     6,6,1;
     6,0,1
     ];

position = ones(N,3);
velocity = ones(N,3);
dis = ones(N,8);

position(:,1) = Data(:,1);
position(:,2) = Data(:,2);
position(:,3) = Data(:,3);
velocity(:,1) = Data(:,4);
velocity(:,2) = Data(:,5);
velocity(:,3) = Data(:,6);

%distance from tag to anchor
dis(:,1) = Data(:,7);
dis(:,2) = Data(:,8);
dis(:,3) = Data(:,9);
dis(:,4) = Data(:,10);
dis(:,5) = Data(:,11);
dis(:,6) = Data(:,12);
dis(:,7) = Data(:,13);
dis(:,8) = Data(:,14);

%three axis angular rate
w = ones(N,3);

%three axis acceleration
a = ones(N,3);

%eulerian angle
angle = ones(N,3);

w(:,1) = Data(:,16);
w(:,2) = Data(:,17);
w(:,3) = Data(:,18);

a(:,1) = Data(:,19);
a(:,2) = Data(:,20);
a(:,3) = Data(:,21);

angle(:,1) = Data(:,22);
angle(:,2) = Data(:,23);
angle(:,3) = Data(:,24);


figure;
subplot(3,3,1),plot((1:N),w(:,1),'b');grid on,xlabel('sample num'),ylabel('rad/s'),title('w.x');
subplot(3,3,2),plot((1:N),w(:,2),'b');grid on,xlabel('sample num'),ylabel('rad/s'),title('w.y');
subplot(3,3,3),plot((1:N),w(:,3),'b');grid on,xlabel('sample num'),ylabel('rad/s'),title('w.z');
subplot(3,3,4),plot((1:N),a(:,1),'b');grid on,xlabel('sample num'),ylabel('m^2/s'),title('a.x');
subplot(3,3,5),plot((1:N),a(:,2),'b');grid on,xlabel('sample num'),ylabel('m^2/s'),title('a.y');
subplot(3,3,6),plot((1:N),a(:,3),'b');grid on,xlabel('sample num'),ylabel('m^2/s'),title('a.z');
subplot(3,3,7),plot((1:N),angle(:,1));grid on,xlabel('sample num'),ylabel('deg'),title('angle.x');
subplot(3,3,8),plot((1:N),angle(:,2));grid on,xlabel('sample num'),ylabel('deg'),title('angle.y');
subplot(3,3,9),plot((1:N),angle(:,3));grid on,xlabel('sample num'),ylabel('deg'),title('angle.z');


figure;
subplot(3,3,1),plot((1:N),position(:,1),'b');grid on,xlabel('sample num'),ylabel('m'),title('position.x');
subplot(3,3,2),plot((1:N),position(:,2),'b');grid on,xlabel('sample num'),ylabel('m'),title('position.y');
subplot(3,3,3),plot((1:N),position(:,3),'b');grid on,xlabel('sample num'),ylabel('m'),title('position.z');
subplot(3,3,4),plot((1:N),velocity(:,1),'b');grid on,xlabel('sample num'),ylabel('m/s'),title('velocity.x');
subplot(3,3,5),plot((1:N),velocity(:,2),'b');grid on,xlabel('sample num'),ylabel('m/s'),title('velocity.y');
subplot(3,3,6),plot((1:N),velocity(:,3),'b');grid on,xlabel('sample num'),ylabel('m/s'),title('velocity.z');


figure;
subplot(3,3,1),plot((1:N),dis(:,1),'b');grid on,xlabel('sample num'),ylabel('m'),title('dis0');
subplot(3,3,2),plot((1:N),dis(:,2),'b');grid on,xlabel('sample num'),ylabel('m'),title('dis1');
subplot(3,3,3),plot((1:N),dis(:,3),'b');grid on,xlabel('sample num'),ylabel('m'),title('dis2');
subplot(3,3,4),plot((1:N),dis(:,4),'b');grid on,xlabel('sample num'),ylabel('m'),title('dis3');
subplot(3,3,5),plot((1:N),dis(:,5),'b');grid on,xlabel('sample num'),ylabel('m'),title('dis4');
subplot(3,3,6),plot((1:N),dis(:,6),'b');grid on,xlabel('sample num'),ylabel('m'),title('dis5');
subplot(3,3,7),plot((1:N),dis(:,7));grid on,xlabel('sample num'),ylabel('m'),title('dis6');
subplot(3,3,8),plot((1:N),dis(:,8));grid on,xlabel('sample num'),ylabel('m'),title('dis7');

