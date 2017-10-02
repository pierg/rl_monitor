file = fopen('stats.txt','w');
fprintf(file,'\t');
for j = 1:iterations
label = num2str(j);
fprintf(file,'%s\t',label);
end
fprintf(file,'average\n');

