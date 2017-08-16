if goalReached(end) == 0
  iterations = size(goalReached, 2)-1;
else
  iterations = size(goalReached, 2);
end

% Set for which iteration you want to see the plots
i=1;

fig_torcs = figure;
set(fig_torcs,'visible','off');
set(fig_torcs, 'PaperPositionMode', 'manual');
set(fig_torcs, 'PaperPosition', [0 0 200 100]);


  grid('on');
  ALL_trackPos = cell2mat(trackPos{1, i});
  subplot(6,1,1);
  plot(ALL_trackPos);
  hold on;
  xlabel('Step #');
  ylabel('TrackPos');
  
  grid('on');
  ALL_steering = cell2mat(steering{1,i});
  subplot(6,1,2);
  plot(ALL_steering);
  hold on;
  xlabel('Step #');
  ylabel('Steering');
  
  grid('on');
  ALL_speedX = cell2mat(speedX{1,i});
  subplot(6,1,3);
  plot(ALL_speedX);
  hold on;
  xlabel('Step #');
  ylabel('SpeedX');
  
  grid('on');
  ALL_accel = cell2mat(accel{1,i});
  subplot(6,1,4);
  plot(ALL_accel);
  hold on;
  xlabel('Step #');
  ylabel('Accel');
  
  grid('on');
  ALL_brake = cell2mat(brake{1,i});
  subplot(6,1,5);
  plot(ALL_brake);
  hold on;
  xlabel('Step #');
  ylabel('Brake');
  
  grid('on');
  ALL_damage = cell2mat(damage{1,i});
  subplot(6,1,6);
  plot(ALL_damage);
  hold on;
  xlabel('Step #');
  ylabel('Damage');



  file_name = [num2str(i) '_TORCS_VALUES'];
  saveas(fig_torcs, file_name, 'png');


% set(fig_torcs,'Units','Inches');
% pos = get(fig_torcs,'Position');
% set(fig_torcs,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
% saveas(fig_torcs, file_name, 'pdf');