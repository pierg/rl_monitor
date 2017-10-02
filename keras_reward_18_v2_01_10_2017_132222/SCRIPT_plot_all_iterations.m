if goalReached(end) == 0
iterations = size(goalReached, 2)-1;
else
iterations = size(goalReached, 2);
end

mkdir plots;

avr_n = 100;

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

fig_episodes_avg = figure;
set(fig_episodes_avg,'visible','off');
grid('on');
file_name = ['plots/' num2str(i) '_REWARDS_EPISODES_AVR_100'];
avr_vector = arrayfun(@(l) mean(rewardsPerEpisode{i}(l:l+avr_n-1)),1:avr_n:length(rewardsPerEpisode{i})-avr_n+1)';
plot(avr_vector);
xlabel('Episode #');
ylabel('Average Reward per Episode (each 100 Ep.)');
saveas(fig_episodes_avg, file_name, 'png');


fig_time = figure;
set(fig_time,'visible','off');
grid('on');
file_name = ['plots/' num2str(i) '_TIME_EPISODES'];
plot(subtimes{i});
xlabel('Episode #');
ylabel('Time (sec)');
saveas(fig_time, file_name, 'png');


%   ALL REWARDS ALL STEPS DIVIDED BY EPISODES AVR 100 <<<<<<<<<<<<<
    fig_steps = figure;
hold on;
set(fig_steps,'visible','off');
grid('on');
ALL_rewards = cell2mat(rewardsPerStep{1, i});
avr_vector = arrayfun(@(l) mean(ALL_rewards(l:l+avr_n-1)),1:avr_n:length(ALL_rewards)-avr_n+1)';
plot(avr_vector);
xlabel('Step # (/100)');
ylabel('Average Reward per Step (each 100 St.)');

file_name = ['plots/' num2str(i) '_REWARDS_ALL_STEPS_AVR_100'];
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
%     x_value = 0;
%     for j = 1:episodeCount(i)
% %       number of steps in the selected episode
%         steps = step{1, i};
%         n_steps = steps(1, j);
%         x_value = x_value + n_steps;
%         y_value = TOT_rewardsPerSteps(x_value);
%         plot([x_value x_value], [y_value y_value], '-.r*');
%     end
xlabel('Step #');
ylabel('Cumulative Reward');
file_name = ['plots/' num2str(i) '_TOT_REWARDS_ALL_STEPS'];
saveas(fig_tot_steps, file_name, 'png');
hold off;


%     AVERAGED VALUES

%   TOT REWARDS ALL EPISODES                    <<<<<<<<<<<<<
    fig_tot_rewards = figure;
hold on;
set(fig_tot_rewards,'visible','off');
grid('on');
TOT_rewardsPerEpisode = rewardsPerEpisode{i};
for p = 2:size(TOT_rewardsPerEpisode, 2)
TOT_rewardsPerEpisode(p) = TOT_rewardsPerEpisode(p) + TOT_rewardsPerEpisode(p-1);
end
avr_vector = arrayfun(@(l) mean(TOT_rewardsPerEpisode(l:l+avr_n-1)),1:avr_n:length(TOT_rewardsPerEpisode)-avr_n+1)';
plot(avr_vector);
xlabel('Episode # (/100)');
ylabel('Cumulative Reward Averaged each 100 Episodes');
file_name = ['plots/' num2str(i) '_TOT_REWARDS_ALL_EPISODES_AVR_100'];
saveas(fig_tot_rewards, file_name, 'png');
hold off;

%   TOT REWARDS ALL STEPS DIVIDED BY EPISODES   <<<<<<<<<<<<<
    fig_tot_steps = figure;
set(fig_tot_steps,'visible','off');
grid('on');
hold on;
TOT_rewardsPerSteps = cell2mat(rewardsPerStep{1, i});
avr_vector = arrayfun(@(l) mean(TOT_rewardsPerSteps(l:l+avr_n-1)),1:avr_n:length(TOT_rewardsPerSteps)-avr_n+1)';
for p = 2:size(avr_vector, 2)
TOT_rewardsPerSteps(p) = TOT_rewardsPerSteps(p) + TOT_rewardsPerSteps(p-1);
end
plot(TOT_rewardsPerSteps);
hold on;
%   for each episode, draw dots on the plot
x_value = 0;
%     for j = 1:episodeCount(i)
% %       number of steps in the selected episode
%         steps = step{1, i};
%         n_steps = steps(1, j);
%         x_value = x_value + n_steps;
%         y_value = TOT_rewardsPerSteps(x_value);
%         plot([x_value x_value], [y_value y_value], '-.r*');
%     end
xlabel('Step # (/100)');
ylabel('Cumulative Reward Averaged each 100 Steps');
file_name = ['plots/' num2str(i) '_TOT_REWARDS_ALL_STEPS_AVR_100'];
saveas(fig_tot_steps, file_name, 'png');
hold off;

i = i+STEP;

end
