if goalReached(end) == 0
  iterations = size(goalReached, 2)-1;
else
  iterations = size(goalReached, 2);
end

mkdir plots;

i=1;
% STEP = round(iterations/10);
STEP = 1;
while i <= iterations
    fig_episodes = figure;
    set(fig_episodes,'visible','off');
    grid('on');
    file_name = ['plots/' num2str(i) '_REWARDS_EPISODES'];
    plot(rewardsPerEpisode{i});
    xlabel('Episode #');
    ylabel('Reward');
    saveas(fig_episodes, file_name, 'png');
    
    fig_time = figure;
    set(fig_time,'visible','off');
    grid('on');
    file_name = ['plots/' num2str(i) '_TIME_EPISODES'];
    plot(subtimes{i});
    xlabel('Episode #');
    ylabel('Time (sec)');
    saveas(fig_time, file_name, 'png');
    
%   ALL REWARDS ALL STEPS DIVIDED BY EPISODES <<<<<<<<<<<<<
    fig_steps = figure;
    hold on;
    set(fig_steps,'visible','off');
    grid('on');
    ALL_rewards = cell2mat(rewardsPerStep{1, i});
    plot(ALL_rewards);
    xlabel('Step #');
    ylabel('Reward');
    hold on;
    
%   for each episode, draw lines on the plot
    x_value = 0;
    for j = 1:episodeCount(i)
%       number of steps in the selected episode
        steps = step{1, i};
        n_steps = steps(1, j);
        x_value = x_value + n_steps;
        y_value = ALL_rewards(x_value);
        plot([x_value x_value], [y_value y_value], '-.r*');
    end
    file_name = ['plots/' num2str(i) '_REWARDS_ALL_STEPS'];
    saveas(fig_steps, file_name, 'png');
    hold off;
    
   
%   TOT REWARDS ALL EPISODES                    <<<<<<<<<<<<<
    fig_tot_rewards = figure;
    hold on;
    set(fig_tot_rewards,'visible','off');
    grid('on');
    TOT_rewardsPerEpisode = rewardsPerEpisode{i};
    for p = 2:size(TOT_rewardsPerEpisode, 2)
        TOT_rewardsPerEpisode(p) = TOT_rewardsPerEpisode(p) + TOT_rewardsPerEpisode(p-1);
    end
    plot(TOT_rewardsPerEpisode);
    xlabel('Episode #');
    ylabel('Cumulative Reward');
    file_name = ['plots/' num2str(i) '_TOT_REWARDS_ALL_EPISODES'];
    saveas(fig_tot_rewards, file_name, 'png');
    hold off;
    
    %   TOT REWARDS ALL STEPS DIVIDED BY EPISODES   <<<<<<<<<<<<<  
    fig_tot_steps = figure;
    set(fig_tot_steps,'visible','off');
    grid('on');
    hold on;
    TOT_rewardsPerSteps = cell2mat(rewardsPerStep{1, i});
    for p = 2:size(TOT_rewardsPerSteps, 2)
        TOT_rewardsPerSteps(p) = TOT_rewardsPerSteps(p) + TOT_rewardsPerSteps(p-1);
    end
    plot(TOT_rewardsPerSteps);
    hold on;
%   for each episode, draw dots on the plot
    x_value = 0;
    for j = 1:episodeCount(i)
%       number of steps in the selected episode
        steps = step{1, i};
        n_steps = steps(1, j);
        x_value = x_value + n_steps;
        y_value = TOT_rewardsPerSteps(x_value);
        plot([x_value x_value], [y_value y_value], '-.r*');
    end
    xlabel('Step #');
    ylabel('Cumulative Reward');
    file_name = ['plots/' num2str(i) '_TOT_REWARDS_ALL_STEPS'];
    saveas(fig_tot_steps, file_name, 'png');
    hold off;
    
    
    
%   PLOTS COUNTERS

%{
  figure_speed = figure;
  set(figure_speed,'visible','off');
  grid('on');
  hold on;
  plot(c_Speed_Stuck{i},'r');
  plot(c_Speed_Turning{i},'g');
  plot(c_Speed_GoingStraight{i},'b');
  legend('Stuck','Turning','GoingStraight');
  xlabel('Episodes');
  ylabel('Speed');
  hold off;
  speed_filename = ['figure_speed' num2str(i)];
  saveas(figure_speed, speed_filename, 'png');
  
  figure_trackPos = figure;
  set(figure_trackPos,'visible','off');
  grid('on');
  hold on;
  plot(c_TrackPos_leftOffRoad{i},'r');
  plot(c_TrackPos_limitRoad{i},'g');
  plot(c_TrackPos_centerRoad{i},'b');
  plot(c_TrackPos_rightOffRoad{i},'m');
  legend('leftOffRoad','limitRoad','centerRoad','rightOffRoad');
  xlabel('Episodes');
  ylabel('TrackPos');
  hold off;
  trackPos_filename = ['figure_trackPos' num2str(i)];
  saveas(figure_trackPos,trackPos_filename,'png');
  
  figure_OpponentsRight = figure;
  set(figure_OpponentsRight,'visible','off');
  grid('on');
  hold on;
  plot(c_OpponentsRight_carToTheRight{i},'r');
  plot(c_OpponentsRight_carCloseToTheRight{i},'g');
  plot(c_OpponentsRight_rightFree{i},'b');
  plot(c_OpponentsRight_carFarToTheRight{i},'m');
  legend('carToTheRight','carCloseToTheRight','rightFree','carFarToTheRight');
  xlabel('Episodes');
  ylabel('OpponentsRight');
  hold off;
  trackPos_filename = ['figure_OpponentsRight' num2str(i)];
  saveas(figure_OpponentsRight,trackPos_filename,'png');
  
  figure_OpponentsBehind = figure;
  set(figure_OpponentsBehind, 'visible','off');
  grid('on');
  hold on;
  plot(c_OpponentsBehind_carCloseBehind{i},'r');
  plot(c_OpponentsBehind_carBehind{i},'g');
  plot(c_OpponentsBehind_carFarbehind{i},'b');
  plot(c_OpponentsBehind_behindFree{i},'m');
  legend('carCloseBehind','carBehind','carFarBehind','behindFree');
  xlabel('Episodes');
  ylabel('OpponentsBehind');
  hold off;
  trackPos_filename = ['figure_OpponentsBehind' num2str(i)];
  saveas(figure_OpponentsBehind,trackPos_filename,'png');
  
  figure_OpponentsLeft = figure;
  set(figure_OpponentsLeft,'visible','off');
  grid('on');
  hold on;
  plot(c_OpponentsLeft_carCloseToTheLeft{i},'r');
  plot(c_OpponentsLeft_carToTheLeft{i},'g');
  plot(c_OpponentsLeft_carFarToTheLeft{i},'b');
  plot(c_OpponentsLeft_leftFree{i},'m');
  legend('carCloseToTheLeft','carToTheLeft','carFarToTheLeft','leftFree');
  xlabel('Episodes');
  ylabel('OpponentsLeft');
  hold off;
  trackPos_filename = ['figure_OpponentsLeft' num2str(i)];
  saveas(figure_OpponentsLeft,trackPos_filename,'png');
  
  figure_OpponentsAhead = figure;
  set(figure_OpponentsAhead,'visible','off');
  grid('on');
  hold on;
  plot(c_OpponentsAhead_carCloseAhead{i},'r');
  plot(c_OpponentsAhead_carAhead{i},'g');
  plot(c_OpponentsAhead_carFarAhead{i},'b');
  plot(c_OpponentsAhead_frontFree{i},'m');
  legend('carCloseAhead','carAhead','carFarAhead','frontFree');
  xlabel('Episodes');
  ylabel('OpponentsAhead');
  hold off;
  trackPos_filename = ['figure_OpponentsAhead' num2str(i)];
  saveas(figure_OpponentsAhead,trackPos_filename,'png');
  
  figure_Damage = figure;
  set(figure_Damage,'visible','off');
  grid('on');
  hold on;
  plot(c_Damage_damaged{i},'r');
  plot(c_Damage_normal{i}, 'b');
  legend('Damage_damaged','Damage_normal');
  xlabel('Episodes');
  ylabel('Damage');
  hold off;
  trackPos_filename = ['figure_OpponentsDamage' num2str(i)];
  saveas(figure_Damage,trackPos_filename,'png');

%}
    i = i+STEP;
    
end
