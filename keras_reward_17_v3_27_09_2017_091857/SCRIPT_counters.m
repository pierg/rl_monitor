if goalReached(end) == 0
iterations = size(goalReached, 2)-1;
else
iterations = size(goalReached, 2);
end

if exist('c_Speed_Curve', 'var') == 0
    c_Speed_Curve = c_Speed_Turning;
end


i=1;


turning_tab = zeros(iterations+1,1);
stuck_tab = zeros(iterations+1,1);
goingStraight_tab = zeros(iterations+1,1);
default_speed_tab = zeros(iterations+1,1);

lor_tab = zeros(iterations+1,1);
lr_tab = zeros(iterations+1,1);
cr_tab = zeros(iterations+1,1);
ror_tab = zeros(iterations+1,1);
default_trackPos_tab = zeros(iterations+1,1);

cttr_tab = zeros(iterations+1,1);
ccttr_tab = zeros(iterations+1,1);
rf_tab = zeros(iterations+1,1);
cfttr_tab = zeros(iterations+1,1);
default_opponentsRight_tab = zeros(iterations+1,1);

ccb_tab = zeros(iterations+1,1);
cb_tab = zeros(iterations+1,1);
cfb_tab = zeros(iterations+1,1);
bf_tab = zeros(iterations+1,1);
default_opponentsBehind_tab = zeros(iterations+1,1);


ccttl_tab = zeros(iterations+1,1);
cttl_tab = zeros(iterations+1,1);
cfttl_tab = zeros(iterations+1,1);
lf_tab = zeros(iterations+1,1);
default_opponentsLeft_tab = zeros(iterations+1,1);


cca_tab = zeros(iterations+1,1);
ca_tab = zeros(iterations+1,1);
cfa_tab = zeros(iterations+1,1);
ff_tab = zeros(iterations+1,1);
default_opponentsAhead_tab = zeros(iterations+1,1);

dam_tab = zeros(iterations+1,1);
norm_tab = zeros(iterations+1,1);
default_damage_tab = zeros(iterations+1,1);

while i <= iterations

if goalReached(i) == 1
stuck_sum = 0;
turning_sum = 0;
goingStraight_sum = 0;
default_speed_sum = 0;

for j = 1:size(c_Speed_Stuck{i},2)
stuck_sum = stuck_sum + c_Speed_Stuck{i}(j);
turning_sum = turning_sum + c_Speed_Curve{i}(j);
goingStraight_sum = goingStraight_sum + c_Speed_GoingStraight{i}(j);
default_speed_sum = default_speed_sum + c_Speed_default{i}(j);
end

total_speed = stuck_sum + turning_sum + goingStraight_sum + default_speed_sum;

turning_tab(i) = turning_sum/total_speed*100;
stuck_tab(i) = stuck_sum/total_speed*100;
goingStraight_tab(i) = goingStraight_sum/total_speed*100;
default_speed_tab(i) = default_speed_sum/total_speed*100;

lor_sum = 0;
lr_sum = 0;
cr_sum = 0;
ror_sum = 0;
default_trackPos_sum = 0;

for j = 1:size(c_TrackPos_leftOffRoad{i},2)
lor_sum = lor_sum + c_TrackPos_leftOffRoad{i}(j);
lr_sum = lr_sum + c_TrackPos_limitRoad{i}(j);
cr_sum = cr_sum + c_TrackPos_centerRoad{i}(j);
ror_sum = ror_sum + c_TrackPos_rightOffRoad{i}(j);
default_trackPos_sum = default_trackPos_sum + c_TrackPos_default{i}(j);
end

total_trackPos = lor_sum + lr_sum + cr_sum + ror_sum + default_trackPos_sum;

lor_tab(i) = lor_sum/total_trackPos*100;
lr_tab(i) = lr_sum/total_trackPos*100;
cr_tab(i) = cr_sum/total_trackPos*100;
ror_tab(i) = ror_sum/total_trackPos*100;
default_trackPos_tab(i) = default_trackPos_sum/total_trackPos*100;

cttr_sum = 0;
ccttr_sum = 0;
rf_sum = 0;
cfttr_sum = 0;
default_opponentsRight_sum = 0;

for j = 1:size(c_OpponentsRight_carToTheRight{i},2)
cttr_sum = cttr_sum + c_OpponentsRight_carToTheRight{i}(j);
ccttr_sum = ccttr_sum + c_OpponentsRight_carCloseToTheRight{i}(j);
rf_sum = rf_sum + c_OpponentsRight_rightFree{i}(j);
cfttr_sum = cfttr_sum + c_OpponentsRight_carFarToTheRight{i}(j);
default_opponentsRight_sum = default_opponentsRight_sum + c_OpponentsRight_default{i}(j);
end

total_opponentsRight = cttr_sum + ccttr_sum + rf_sum + cfttr_sum + default_opponentsRight_sum;

cttr_tab(i) = cttr_sum/total_opponentsRight*100;
ccttr_tab(i) = ccttr_sum/total_opponentsRight*100;
rf_tab(i) = rf_sum/total_opponentsRight*100;
cfttr_tab(i) = cfttr_sum/total_opponentsRight*100;
default_opponentsRight_tab(i) = default_opponentsRight_sum/total_opponentsRight*100;

ccb_sum = 0;
cb_sum = 0;
cfb_sum = 0;
bf_sum = 0;
default_opponentsBehind_sum = 0;

for j = 1:size(c_OpponentsBehind_carCloseBehind{i},2)
ccb_sum = ccb_sum + c_OpponentsBehind_carCloseBehind{i}(j);
cb_sum = cb_sum + c_OpponentsBehind_carBehind{i}(j);
cfb_sum = cfb_sum + c_OpponentsBehind_carFarbehind{i}(j);
bf_sum = bf_sum + c_OpponentsBehind_behindFree{i}(j);
default_opponentsBehind_sum = default_opponentsBehind_sum + c_OpponentsBehind_default{i}(j);
end

total_opponentsBehind = ccb_sum + cb_sum + cfb_sum + bf_sum + default_opponentsBehind_sum;

ccb_tab(i) = ccb_sum/total_opponentsBehind*100;
cb_tab(i) = cb_sum/total_opponentsBehind*100;
cfb_tab(i) = cfb_sum/total_opponentsBehind*100;
bf_tab(i) = bf_sum/total_opponentsBehind*100;
default_opponentsBehind_tab(i) = default_opponentsBehind_sum/total_opponentsBehind*100;

ccttl_sum = 0;
cttl_sum = 0;
cfttl_sum = 0;
lf_sum = 0;
default_opponentsLeft_sum = 0;

for j = 1:size(c_OpponentsLeft_leftFree{i},2)
ccttl_sum = ccttl_sum + c_OpponentsLeft_carCloseToTheLeft{i}(j);
cttl_sum = cttl_sum + c_OpponentsLeft_carToTheLeft{i}(j);
cfttl_sum = cfttl_sum + c_OpponentsLeft_carFarToTheLeft{i}(j);
lf_sum = lf_sum + c_OpponentsLeft_leftFree{i}(j);
default_opponentsLeft_sum = default_opponentsLeft_sum + c_OpponentsLeft_default{i}(j);
end

total_opponentsLeft = ccttl_sum + cttl_sum + cfttl_sum + lf_sum + default_opponentsLeft_sum;

ccttl_tab(i) = ccttl_sum/total_opponentsLeft*100;
cttl_tab(i) = cttl_sum/total_opponentsLeft*100;
cfttl_tab(i) = cfttl_sum/total_opponentsLeft*100;
lf_tab(i) = lf_sum/total_opponentsLeft*100;
default_opponentsLeft_tab(i) = default_opponentsLeft_sum/total_opponentsLeft*100;

cca_sum = 0;
ca_sum = 0;
cfa_sum = 0;
ff_sum = 0;
default_opponentsAhead_sum = 0;

for j = 1:size(c_OpponentsAhead_frontFree{i},2)
cca_sum = cca_sum + c_OpponentsAhead_carCloseAhead{i}(j);
ca_sum = ca_sum + c_OpponentsAhead_carAhead{i}(j);
cfa_sum = cfa_sum + c_OpponentsAhead_carFarAhead{i}(j);
ff_sum = ff_sum + c_OpponentsAhead_frontFree{i}(j);
default_opponentsAhead_sum = default_opponentsAhead_sum + c_OpponentsAhead_default{i}(j);
end

total_opponentsAhead = cca_sum + ca_sum + cfa_sum + ff_sum + default_opponentsAhead_sum;

cca_tab(i) = cca_sum/total_opponentsAhead*100;
ca_tab(i) = ca_sum/total_opponentsAhead*100;
cfa_tab(i) = cfa_sum/total_opponentsAhead*100;
ff_tab(i) = ff_sum/total_opponentsAhead*100;
default_opponentsAhead_tab(i) = default_opponentsAhead_sum/total_opponentsAhead*100;

dam_sum = 0;
norm_sum = 0;
default_damage_sum = 0;

for j = 1:size(c_Damage_damaged{i},2)
dam_sum = dam_sum + c_Damage_damaged{i}(j);
norm_sum = norm_sum + c_Damage_normal{i}(j);
default_damage_sum = default_damage_sum + c_Damage_default{i}(j);
end

total_damage = dam_sum + norm_sum + default_damage_sum;

dam_tab(i) = dam_sum/total_damage*100;
norm_tab(i) = norm_sum/total_damage*100;
default_damage_tab(i) = default_damage_sum/total_damage*100;
end

i = i+1;
end

number_goalReached = 0;
episodes_sum = 0;
time_sum = 0;

for j = 1:iterations
if goalReached(j) == 1
number_goalReached = number_goalReached + 1;
episodes_sum = episodes_sum + episodeCount(j);
time_sum = time_sum + totalTime(j);
end
end

turning_tab(iterations+1) = sum(turning_tab(1:iterations)/number_goalReached);
stuck_tab(iterations+1) = sum(stuck_tab(1:iterations)/number_goalReached);
goingStraight_tab(iterations+1) = sum(goingStraight_tab(1:iterations)/number_goalReached);
default_speed_tab(iterations+1) = sum(default_speed_tab(1:iterations)/number_goalReached);

lor_tab(iterations+1) = sum(lor_tab(1:iterations)/number_goalReached);
lr_tab(iterations+1) = sum(lr_tab(1:iterations)/number_goalReached);
cr_tab(iterations+1) = sum(cr_tab(1:iterations)/number_goalReached);
ror_tab(iterations+1) = sum(ror_tab(1:iterations)/number_goalReached);
default_trackPos_tab(iterations+1) = sum(default_trackPos_tab(1:iterations)/number_goalReached);

cttr_tab(iterations+1) = sum(cttr_tab(1:iterations)/number_goalReached);
ccttr_tab(iterations+1) = sum(ccttr_tab(1:iterations)/number_goalReached);
rf_tab(iterations+1) = sum(rf_tab(1:iterations)/number_goalReached);
cfttr_tab(iterations+1) = sum(cfttr_tab(1:iterations)/number_goalReached);
default_opponentsRight_tab(iterations+1) = sum(default_opponentsRight_tab(1:iterations)/number_goalReached);

ccb_tab(iterations+1) = sum(ccb_tab(1:iterations)/number_goalReached);
cb_tab(iterations+1) = sum(cb_tab(1:iterations)/number_goalReached);
cfb_tab(iterations+1) = sum(cfb_tab(1:iterations)/number_goalReached);
bf_tab(iterations+1) = sum(bf_tab(1:iterations)/number_goalReached);
default_opponentsBehind_tab(iterations+1) = sum(default_opponentsBehind_tab(1:iterations)/number_goalReached);

ccttl_tab(iterations+1) = sum(ccttl_tab(1:iterations)/number_goalReached);
cttl_tab(iterations+1) = sum(cttl_tab(1:iterations)/number_goalReached);
cfttl_tab(iterations+1) = sum(cfttl_tab(1:iterations)/number_goalReached);
lf_tab(iterations+1) = sum(lf_tab(1:iterations)/number_goalReached);
default_opponentsLeft_tab(iterations+1) = sum(default_opponentsLeft_tab(1:iterations)/number_goalReached);

cca_tab(iterations+1) = sum(cca_tab(1:iterations)/number_goalReached);
ca_tab(iterations+1) = sum(ca_tab(1:iterations)/number_goalReached);
cfa_tab(iterations+1) = sum(cfa_tab(1:iterations)/number_goalReached);
ff_tab(iterations+1) = sum(ff_tab(1:iterations)/number_goalReached);
default_opponentsAhead_tab(iterations+1) = sum(default_opponentsAhead_tab(1:iterations)/number_goalReached);

dam_tab(iterations+1) = sum(dam_tab(1:iterations)/number_goalReached);
norm_tab(iterations+1) = sum(norm_tab(1:iterations)/number_goalReached);
default_damage_tab(iterations+1) = sum(default_damage_tab(1:iterations)/number_goalReached);

% ALL ITERATIONS
file = fopen('stats.txt','w');
fprintf(file,'\t');
for j = 1:iterations
label = num2str(j);
fprintf(file,'%s\t',label);
end
fprintf(file,'average\n');

% Stats:
    fprintf(file,'# episodes\t');
for j = 1:iterations
fprintf(file,'%d \t',  episodeCount(j));
end
% (*% average column*)
fprintf(file,'%.1f \n', mean(episodeCount(j)));

fprintf(file,'Total time (h)\t');
for j = 1:iterations
fprintf(file,'%.1f \t', totalTime(j)*0.000277778);
end
% (*% average column*)
fprintf(file,'%.1f \n', mean(totalTime(j)*0.000277778));

fprintf(file,'Total reward\t');
for j = 1:iterations
fprintf(file,'%d \t', round(sum(cell2mat(rewardsPerStep{1, j}))));
end
% (*% average column*)
fprintf(file,'%.1f \n', mean(round(sum(cell2mat(rewardsPerStep{1, j})))));

fprintf(file,'Max reward value\t');
for j = 1:iterations
fprintf(file,'%.1f \t', max(cell2mat(rewardsPerStep{1, j})));
end
% (*% average column*)
fprintf(file,'%.1f \n', mean(max(cell2mat(rewardsPerStep{1, j}))));

fprintf(file,'Min reward value\t');
for j = 1:iterations
fprintf(file,'%.1f \t', min(cell2mat(rewardsPerStep{1, j})));
end
% (*% average column*)
fprintf(file,'%.1f \n', mean(min(cell2mat(rewardsPerStep{1, j}))));


fprintf(file,'\n%s\t','TrackPos_centerRoad');
fprintf(file,'%.1f \t',cr_tab);
fprintf(file,'\n%s\t','TrackPos_leftOffRoad');
fprintf(file,'%.1f \t',lor_tab);
fprintf(file,'\n%s\t','TrackPos_limitRoad');
fprintf(file,'%.1f \t',lr_tab);
fprintf(file,'\n%s\t','TrackPos_rightOffRoad');
fprintf(file,'%.1f \t',ror_tab);
fprintf(file,'\n%s\t','TrackPos_default');
fprintf(file,'%.1f \t',default_trackPos_tab);

fprintf(file,'\n%s\t','Speed goingStraight');
fprintf(file,'%.1f \t',goingStraight_tab);
fprintf(file,'\n%s\t','Speed Turning');
fprintf(file,'%.1f \t',turning_tab);
fprintf(file,'\n%s\t','Speed Stuck');
fprintf(file,'%.1f \t',stuck_tab);
fprintf(file,'\n%s\t','Speed_default');
fprintf(file,'%.1f \t',default_speed_tab);

fprintf(file,'\n%s\t','Damage_normal');
fprintf(file,'%.1f \t',norm_tab);
fprintf(file,'\n%s\t','Damage_damaged');
fprintf(file,'%.1f \t',dam_tab);
fprintf(file,'\n%s\t','Damage_default');
fprintf(file,'%.1f \t',default_damage_tab);


fprintf(file,'\n%s\t','OpponentsRight_carToTheRight');
fprintf(file,'%.1f \t',cttr_tab);
fprintf(file,'\n%s\t','OpponentsRight_carCloseToTheRight');
fprintf(file,'%.1f \t',ccttr_tab);
fprintf(file,'\n%s\t','OpponentsRight_rightFree');
fprintf(file,'%.1f \t',rf_tab);
fprintf(file,'\n%s\t','OpponentsRight_carFarToTheRight');
fprintf(file,'%.1f \t',cfttr_tab);
fprintf(file,'\n%s\t','OpponentsRight_default');
fprintf(file,'%.1f \t',default_opponentsRight_tab);

fprintf(file,'\n%s\t','OpponentsBehind_carCloseBehind');
fprintf(file,'%.1f \t',ccb_tab);
fprintf(file,'\n%s\t','OpponentsBehind_carBehind');
fprintf(file,'%.1f \t',cb_tab);
fprintf(file,'\n%s\t','OpponentsBehind_carFarbehind');
fprintf(file,'%.1f \t',cfb_tab);
fprintf(file,'\n%s\t','OpponentsBehind_behindFree');
fprintf(file,'%.1f \t',bf_tab);
fprintf(file,'\n%s\t','OpponentsBehind_default');
fprintf(file,'%.1f \t',default_opponentsBehind_tab);

fprintf(file,'\n%s\t','OpponentsLeft_carCloseToTheLeft');
fprintf(file,'%.1f \t',ccttl_tab);
fprintf(file,'\n%s\t','OpponentsLeft_carToTheLeft');
fprintf(file,'%.1f \t',cttl_tab);
fprintf(file,'\n%s\t','OpponentsLeft_carFarToTheLeft');
fprintf(file,'%.1f \t',cfttl_tab);
fprintf(file,'\n%s\t','OpponentsLeft_leftFree');
fprintf(file,'%.1f \t',lf_tab);
fprintf(file,'\n%s\t','OpponentsLeft_default');
fprintf(file,'%.1f \t',default_opponentsLeft_tab);

fprintf(file,'\n%s\t','OpponentsAhead_carCloseAhead');
fprintf(file,'%.1f \t',cca_tab);
fprintf(file,'\n%s\t','OpponentsAhead_carAhead');
fprintf(file,'%.1f \t',ca_tab);
fprintf(file,'\n%s\t','OpponentsAhead_carFarAhead');
fprintf(file,'%.1f \t',cfa_tab);
fprintf(file,'\n%s\t','OpponentsAhead_frontFree');
fprintf(file,'%.1f \t',ff_tab);
fprintf(file,'\n%s\t','OpponentsAhead_default');
fprintf(file,'%.1f \t',default_opponentsAhead_tab);

fclose(file);

% % Just numbers
%
% file = fopen('counters_all_iterations_numbers.txt','w');
%
% fprintf(file,'%.1f\n', episodes_sum/number_goalReached);
% fprintf(file,'%.1f\n', number_goalReached/iterations*100);
% fprintf(file,'%.1f\n\n\n', time_sum/number_goalReached);
%
% fprintf(file,'%.1f \t',cr_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',lor_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',lr_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',ror_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',default_trackPos_tab);
% fprintf(file,'\n');
%
% fprintf(file,'%.1f \t',goingStraight_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',turning_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',stuck_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',default_speed_tab);
% fprintf(file,'\n');
%
% fprintf(file,'%.1f \t',norm_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',dam_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',default_damage_tab);
% fprintf(file,'\n');
%
% fprintf(file,'%.1f \t',cttr_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',ccttr_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',rf_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',cfttr_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',default_opponentsRight_tab);
% fprintf(file,'\n');
%
% fprintf(file,'%.1f \t',ccb_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',cb_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',cfb_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',bf_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',default_opponentsBehind_tab);
% fprintf(file,'\n');
%
% fprintf(file,'%.1f \t',ccttl_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',cttl_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',cfttl_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',lf_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',default_opponentsLeft_tab);
% fprintf(file,'\n');
%
% fprintf(file,'%.1f \t',cca_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',ca_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',cfa_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',ff_tab);
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',default_opponentsAhead_tab);
%
% fclose(file);
%
% % AVERAGE
% file = fopen('counters_avarage.txt','w');
% % fprintf(file,'\t');
%
% fprintf(file,'%.1f\n', episodes_sum/number_goalReached);
% fprintf(file,'%.1f\n', number_goalReached/iterations*100);
% fprintf(file,'%.1f\n\n\n', time_sum/number_goalReached);
%
% fprintf(file,'\n%s\t','TrackPos_centerRoad');
% fprintf(file,'%.1f \t',cr_tab(iterations+1));
% fprintf(file,'\n%s\t','TrackPos_leftOffRoad');
% fprintf(file,'%.1f \t',lor_tab(iterations+1));
% fprintf(file,'\n%s\t','TrackPos_limitRoad');
% fprintf(file,'%.1f \t',lr_tab(iterations+1));
% fprintf(file,'\n%s\t','TrackPos_rightOffRoad');
% fprintf(file,'%.1f \t',ror_tab(iterations+1));
% fprintf(file,'\n%s\t','TrackPos_default');
% fprintf(file,'%.1f \t',default_trackPos_tab(iterations+1));
%
% fprintf(file,'\n%s\t','Speed goingStraight');
% fprintf(file,'%.1f \t',goingStraight_tab(iterations+1));
% fprintf(file,'\n%s\t','Speed Turning');
% fprintf(file,'%.1f \t',turning_tab(iterations+1));
% fprintf(file,'\n%s\t','Speed Stuck');
% fprintf(file,'%.1f \t',stuck_tab(iterations+1));
% fprintf(file,'\n%s\t','Speed_default');
% fprintf(file,'%.1f \t',default_speed_tab(iterations+1));
%
% fprintf(file,'\n%s\t','Damage_normal');
% fprintf(file,'%.1f \t',norm_tab(iterations+1));
% fprintf(file,'\n%s\t','Damage_damaged');
% fprintf(file,'%.1f \t',dam_tab(iterations+1));
% fprintf(file,'\n%s\t','Damage_default');
% fprintf(file,'%.1f \t',default_damage_tab(iterations+1));
%
% fprintf(file,'\n%s\t','OpponentsRight_carToTheRight');
% fprintf(file,'%.1f \t',cttr_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsRight_carCloseToTheRight');
% fprintf(file,'%.1f \t',ccttr_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsRight_rightFree');
% fprintf(file,'%.1f \t',rf_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsRight_carFarToTheRight');
% fprintf(file,'%.1f \t',cfttr_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsRight_default');
% fprintf(file,'%.1f \t',default_opponentsRight_tab(iterations+1));
%
% fprintf(file,'\n%s\t','OpponentsBehind_carCloseBehind');
% fprintf(file,'%.1f \t',ccb_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsBehind_carBehind');
% fprintf(file,'%.1f \t',cb_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsBehind_carFarbehind');
% fprintf(file,'%.1f \t',cfb_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsBehind_behindFree');
% fprintf(file,'%.1f \t',bf_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsBehind_default');
% fprintf(file,'%.1f \t',default_opponentsBehind_tab(iterations+1));
%
% fprintf(file,'\n%s\t','OpponentsLeft_carCloseToTheLeft');
% fprintf(file,'%.1f \t',ccttl_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsLeft_carToTheLeft');
% fprintf(file,'%.1f \t',cttl_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsLeft_carFarToTheLeft');
% fprintf(file,'%.1f \t',cfttl_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsLeft_leftFree');
% fprintf(file,'%.1f \t',lf_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsLeft_default');
% fprintf(file,'%.1f \t',default_opponentsLeft_tab(iterations+1));
%
% fprintf(file,'\n%s\t','OpponentsAhead_carCloseAhead');
% fprintf(file,'%.1f \t',cca_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsAhead_carAhead');
% fprintf(file,'%.1f \t',ca_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsAhead_carFarAhead');
% fprintf(file,'%.1f \t',cfa_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsAhead_frontFree');
% fprintf(file,'%.1f \t',ff_tab(iterations+1));
% fprintf(file,'\n%s\t','OpponentsAhead_default');
% fprintf(file,'%.1f \t',default_opponentsAhead_tab(iterations+1));
%
% fclose(file);
%
% % AVARAGE NUMBERS
% file = fopen('counters_avarage_numbers.txt','w');
%
% fprintf(file,'%.1f\n', episodes_sum/number_goalReached);
% fprintf(file,'%.1f\n', number_goalReached/iterations*100);
% fprintf(file,'%.1f\n\n\n', time_sum/number_goalReached);
%
% fprintf(file,'%.1f \t',cr_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',lor_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',lr_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',ror_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',default_trackPos_tab(iterations+1));
% fprintf(file,'\n');
%
% fprintf(file,'%.1f \t',goingStraight_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',turning_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',stuck_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',default_speed_tab(iterations+1));
% fprintf(file,'\n');
%
% fprintf(file,'%.1f \t',norm_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',dam_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',default_damage_tab(iterations+1));
% fprintf(file,'\n');
%
% fprintf(file,'%.1f \t',cttr_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',ccttr_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',rf_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',cfttr_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',default_opponentsRight_tab(iterations+1));
% fprintf(file,'\n');
%
%
% fprintf(file,'%.1f \t',ccb_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',cb_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',cfb_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',bf_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',default_opponentsBehind_tab(iterations+1));
% fprintf(file,'\n');
%
% fprintf(file,'%.1f \t',ccttl_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',cttl_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',cfttl_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',lf_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',default_opponentsLeft_tab(iterations+1));
% fprintf(file,'\n');
%
% fprintf(file,'%.1f \t',cca_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',ca_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',cfa_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',ff_tab(iterations+1));
% fprintf(file,'\n');
% fprintf(file,'%.1f \t',default_opponentsAhead_tab(iterations+1));
%
% fclose(file);
%
