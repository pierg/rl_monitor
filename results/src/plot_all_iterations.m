iterations = size(goalReached, 2);

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
    for j = 1:episodeCount(i)
%       number of steps in the selected episode
        steps = step{1, i};
        n_steps = steps(1, j);
        y_value = ALL_rewards(n_steps);
        plot([n_steps n_steps], [y_value y_value], '-.r*');
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
    for j = 1:episodeCount(i)
%       number of steps in the selected episode
        steps = step{1, i};
        n_steps = steps(1, j);
        y_value = TOT_rewardsPerSteps(n_steps);
        plot([n_steps n_steps], [y_value y_value], '-.r*');
    end
    xlabel('Step #');
    ylabel('Cumulative Reward');
    file_name = ['plots/' num2str(i) '_TOT_REWARDS_ALL_STEPS'];
    saveas(fig_tot_steps, file_name, 'png');
    hold off;

    i = i+STEP;
    
end
