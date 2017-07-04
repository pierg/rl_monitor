iterations = size(goalReached, 2);

% STEP = round(iterations/10);
STEP = 1;


% TOTAL REWARD PER EPISODE
fig_tot_rewards = figure;
set(fig_tot_rewards,'visible','off');
grid('on');
hold on;
i=1;
% Sum of all cumulative rewards of all iterations
sumRewards = 0;
while i <= iterations
    
    TOT_rewardsPerEpisode = rewardsPerEpisode{i};
    for p = 2:size(TOT_rewardsPerEpisode, 2)
        TOT_rewardsPerEpisode(p) = TOT_rewardsPerEpisode(p) + TOT_rewardsPerEpisode(p-1);
    end
    plot(TOT_rewardsPerEpisode);
    cumulativeReward = max(TOT_rewardsPerEpisode);
    if cumulativeReward > maxReward
        maxReward = cumulativeReward;
    end
    sumRewards = sumRewards + cumulativeReward;
    x_pos = size(TOT_rewardsPerEpisode, 2);
    y_pos = TOT_rewardsPerEpisode(x_pos);
    nameLine = ['\leftarrow' num2str(i)];
    text(x_pos,y_pos, nameLine);
    hold on;
    
    i = i + STEP;
    
end

avarageRewards = sumRewards/iterations;
xlabel(['Episode # - AVR: ' num2str(round(mean(episodeCount)))]);
ylabel('Cumulative Reward');
y_avr = maxReward/2;
x_avr = max(episodeCount) + 2;
text(x_avr, y_avr, ['AVR: ' num2str(round(avarageRewards))]);
hold off;
file_name = ['A_rwd=' num2str(round(avarageRewards))];
saveas(fig_tot_rewards, file_name, 'png');    


% TOTAL TIME TO REACH THE GOAL
fig_tot_time_to_goal = figure;
set(fig_tot_time_to_goal,'visible','off');
grid('on');
scatter(1:iterations, totalTime);
hold on;
for k = 1:iterations
    text(k+0.7,totalTime(k), num2str(k));
end
xlabel('Iteration #');
ylabel('Total time to reach the goal');
y_avr = max(totalTime)/2;
x_avr = iterations + 2;
text(x_avr,y_avr, ['AVR: ' num2str(round(mean(totalTime))) 'sec']);
hold off;
file_name = ['A_tme=' num2str(round(mean(totalTime)))];
saveas(fig_tot_time_to_goal, file_name, 'png');  

% NUMBER OF EPISODES
fig_count = figure;
set(fig_count,'visible','off');
grid('on');
scatter(1:iterations, episodeCount);
hold on;
for k = 1:iterations
    text(k+0.7,episodeCount(k), num2str(k));
end
xlabel('Iteration #');
ylabel('Number of episodes to reach the goal');
y_avr = max(episodeCount)/2;
x_avr = iterations + 2;
text(x_avr,y_avr, ['AVR: ' num2str(round(mean(episodeCount))) 'eps']);
hold off;
file_name = ['A_eps=' num2str(round(mean(episodeCount))) ' N_ite=' num2str(iterations) ];
saveas(fig_count, file_name, 'png'); 

