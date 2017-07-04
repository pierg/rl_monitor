iterations = size(goalReached, 2);

mkdir plots;

% Episode Count
fig_count = figure;
set(fig_count,'visible','off');
plot(episodeCount);
saveas(fig_count,'plots/number_of_episodes', 'png');

for i = 1:iterations
    fig_episodes = figure;
    set(fig_episodes,'visible','off');
    file_name = ['plots/' num2str(i) '_REWARDS_EPISODES'];
    plot(rewardsPerEpisode{i});
    saveas(fig_episodes, file_name, 'png');
    
    fig_time = figure;
    set(fig_time,'visible','off');
    file_name = ['plots/' num2str(i) '_TIME_EPISODES'];
    plot(subtimes{i});
    saveas(fig_time, file_name, 'png');
    
    fig_steps = figure;
    hold on;
    set(fig_steps,'visible','off');
    ALL_rewards = cell2mat(rewardsPerStep{1, i});
    y_min = min(ALL_rewards) -100;
    y_max = max(ALL_rewards);
    plot(ALL_rewards);
    hold on;
%   for each episode
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
end


% Episode Count overlayed
fig2 = figure;
set(fig2,'visible','off');
hold on;
for i = 1:iterations
    plot(rewardsPerEpisode{i});
end
hold off;
saveas(fig2, 'plots/rewards_episodes_overlayed', 'png');
