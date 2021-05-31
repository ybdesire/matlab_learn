




fid1 = fopen('test.txt','r'); %# open  file for reading
fid2 = fopen('new.csv','w'); %# open new csv file
while ~feof(fid1)
    line = fgets(fid1); %# read line by line
    line = strtrim(line); % remove new line
    newStr = split(line,",");% string split
    disp(newStr{1});%display first column item
    fprintf(fid2,'%s\n',line); %# write the line to the new file
end
fclose(fid1);
fclose(fid2);
