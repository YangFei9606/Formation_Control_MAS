close all;
color_m=['r','g','b','k'];

%% video produce
figure(21)
myVideo=VideoWriter('Test-20-1','MPEG-4');
myVideo.FrameRate=10;
open(myVideo);
totaltime=20;
timeframe=0.0002;
axis_range=[-4 4 -4 4];
z=0;
for i=1:500:totaltime/timeframe+1
    hold off
    ct=(i-1)*timeframe;
    % reference states
    cir=0:pi/100:2*pi;
    plot(3*cos(cir)+0,3*sin(cir)+0,'--c','linewidth',3);
    hold on;
    grid on;
    for j=1:4
       draw_the_robot(Position_agents(i,3*(j-1)+2:3*(j-1)+4),color_m(j),j);
       hold on;
       axis(axis_range);
       legend("Expected","time="+string(double(ct)));
    end
    
    frame=getframe();
    writeVideo(myVideo,frame)
    z=z+1;
end

close(myVideo);


%% catch some moment
figure(22)
totaltime=20;
timeframe=0.0002;
i=1+(totaltime/timeframe)*(2*5/20);
cir=0:pi/100:2*pi;
plot(3*cos(cir)+0,3*sin(cir)+0,'--c','linewidth',3);
hold on;
grid on;
ct=(i-1)*timeframe;
axis_range=[-4 4 -4 4];


%% draw the trajectory
for j=1:4
   plot(Position_agents(1:i,3*(j-1)+2) , Position_agents(1:i,3*(j-1)+3), color_m(j),'linewidth',1); 
   hold on;
   axis(axis_range);
end


%% draw the robot's final position
for j=1:4
   draw_the_robot(Position_agents(i,3*(j-1)+2:3*(j-1)+4),color_m(j),j);
   hold on;
   axis(axis_range);
   legend("Expected");
end