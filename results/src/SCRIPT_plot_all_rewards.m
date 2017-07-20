if goalReached(end) == 0
  iterations = size(goalReached, 2)-1;
else
  iterations = size(goalReached, 2);
end

i=1;

while i<=iterations
  fig_torcs = figure;
  set(fig_torcs,'visible','off');
  set(fig_torcs, 'PaperPositionMode', 'manual');
  set(fig_torcs, 'PaperPosition', [0 0 200 100]);
  grid('on');
  ALL_speedX = cell2mat(speedX_rwd{1,i});
  subplot(7,1,1);
  plot(ALL_speedX);
  hold on;
  xlabel('Step #');
  ylabel('SpeedX');
  
  grid('on');
  ALL_damage = cell2mat(damage_rwd{1,i});
  subplot(7,1,2);
  plot(ALL_damage);
  hold on;
  xlabel('Step #');
  ylabel('Damage');
  
  grid('on');
  ALL_trackPos = cell2mat(trackPos_rwd{1, i});
  subplot(7,1,3);
  plot(ALL_trackPos);
  hold on;
  xlabel('Step #');
  ylabel('TrackPos');
  
  grid('on');
  ALL_ahead = cell2mat(opponents_ahead_rwd{1,i});
  subplot(7,1,4);
  plot(ALL_ahead);
  hold on;
  xlabel('Step #');
  ylabel('Opponents ahead');
  
  
  grid('on');
  ALL_left = cell2mat(opponents_left_rwd{1,i});
  subplot(7,1,5);
  plot(ALL_left);
  hold on;
  xlabel('Step #');
  ylabel('Opponents left');
  
  grid('on');
  ALL_right = cell2mat(opponents_right_rwd{1,i});
  subplot(7,1,6);
  plot(ALL_right);
  hold on;
  xlabel('Step #');
  ylabel('Opponents right');
  
  grid('on');
  ALL_back = cell2mat(opponents_back_rwd{1,i});
  subplot(7,1,7);
  plot(ALL_back);
  hold on;
  xlabel('Step #');
  ylabel('Opponents back');
  
  file_name = ['plots/' num2str(i) '_SINGLE_REWARDS'];
  saveas(fig_torcs, file_name, 'png');
  
  hold off;
     
  i=i+1;
end

