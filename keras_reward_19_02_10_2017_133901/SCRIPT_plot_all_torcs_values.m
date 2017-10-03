
iterations = size(trackPos, 2);

i=1;

mkdir torcs_values;

 while i<=iterations
  fig_torcs = figure;
  set(fig_torcs,'visible','off');
  set(fig_torcs, 'PaperPositionMode', 'manual');
  set(fig_torcs, 'PaperPosition', [0 0 100 50]);
  grid('on');
  
  ALL_trackPos = cell2mat(trackPos{1, i});
  subplot(2,1,1);
  plot(ALL_trackPos);
  hold on;
  xlabel('Step #');
  ylabel('TrackPos');
  
  grid('on');
  ALL_speedX = cell2mat(speedX{1,i});
  subplot(2,1,2);
  plot(ALL_speedX);
  hold on;
  xlabel('Step #');
  ylabel('SpeedX');
    
  file_name = ['plots/' num2str(i) '_TORCS_VALUES'];
  saveas(fig_torcs, file_name, 'png');
  
  hold off;
  
  i=i+1;
%   
end
