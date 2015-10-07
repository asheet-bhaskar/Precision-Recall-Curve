%{
I1 = imread('image_0005.jpg');
I2 = imread('image_0095.jpg');
I3 = imread('image_0165.jpg');
I4 = imread('image_0325.jpg');
I5 = imread('image_0565.jpg');
disp(1);
h1 = amain(I1);
disp(2);
h2 = amain(I2);
disp(3);
h3 = amain(I3);
disp(4);
h4 = amain(I4);
disp(5);
h5 = amain(I5);
%}
h1 = dlmread('h1.txt');
Across = dlmread('across.txt');
dist1 = zeros(34,1);
for i=1:34
    dist1(i,1) = canberradistt(h1,Across(:,i));
end
[sorted_dist1, locs1] = sort(dist1, 'ascend');
top_ten1 = sorted_dist1(1:10);
top_ten_locs1 = locs1(1:10);
% rank| image_id |correct |current recall |current precision
pr_table1 = zeros(10,5);
count =0;
for i =1:10
    pr_table1(i,1) = i;
    pr_table1(i,2) = top_ten_locs1(i);
    if(top_ten_locs1(i) == 1 || top_ten_locs1(i) ==2)
         count = count+1;
         pr_table1(i,3) = 1;
    else
         pr_table1(i,3) = 0;
    end
    pr_table1(i,4) = count/2;
    pr_table1(i,5) = count/i;
end

% interpolating pr_table1
ipr_table1 = zeros(11,3);
for i=1:11
    ipr_table1(i,1) = i;
    ipr_table1(i,2) = (i-1)/10;
    % for precision
    for j =1:10
        if(pr_table1(j,4) >= ipr_table1(i,2))
            break;
        end
    end
    ipr_table1(i,3) = max(pr_table1(j:10,5));
end

% second query
h2 = dlmread('h2.txt');
Across = dlmread('across.txt');  % all 34 images
dist2 = zeros(34,1);             % stores canberra distances
for i=1:34
    dist2(i,1) = canberradistt(h2,Across(:,i));
end
[sorted_dist2, locs2] = sort(dist2, 'ascend');
top_ten2 = sorted_dist2(1:10);
top_ten_locs2 = locs2(1:10);
% rank| image_id |correct |current recall |current precision
pr_table2 = zeros(10,5);
count2 =0;
for i =1:10
    pr_table2(i,1) = i;
    pr_table2(i,2) = top_ten_locs2(i);
    if(top_ten_locs2(i) == 3 || top_ten_locs2(i) ==4  )
         count2 = count2+1;
         pr_table2(i,3) = 1;
    else
         pr_table2(i,3) = 0;
    end
    pr_table2(i,4) = count2/2;
    pr_table2(i,5) = count2/i;
end

% interpolating pr_table2
ipr_table2 = zeros(11,3);
for i=1:11
    ipr_table2(i,1) = i;
    ipr_table2(i,2) = (i-1)/10;
    % for precision
    for j =1:10
        if(pr_table2(j,4) >= ipr_table2(i,2))
            break;
        end
    end
    ipr_table2(i,3) = max(pr_table2(j:10,5));
end

% third query

h3 = dlmread('h3.txt');
Across = dlmread('across.txt');  % all 34 images
dist3 = zeros(34,1);             % stores canberra distances
for i=1:34
    dist3(i,1) = canberradistt(h3,Across(:,i));
end
[sorted_dist3, locs3] = sort(dist3, 'ascend');
top_ten3 = sorted_dist3(1:10);
top_ten_locs3 = locs3(1:10);
% rank| image_id |correct |current recall |current precision
pr_table3 = zeros(10,5);
count3 =0;
for i =1:10
    pr_table3(i,1) = i;
    pr_table3(i,2) = top_ten_locs3(i);
    if(top_ten_locs3(i) == 5 || top_ten_locs3(i) ==6  )
         count3 = count3+1;
         pr_table3(i,3) = 1;
    else
         pr_table3(i,3) = 0;
    end
    pr_table3(i,4) = count3/2;
    pr_table3(i,5) = count3/i;
end

% interpolating pr_table2
ipr_table3 = zeros(11,3);
for i=1:11
    ipr_table3(i,1) = i;
    ipr_table3(i,2) = (i-1)/10;
    % for precision
    for j =1:10
        if(pr_table3(j,4) >= ipr_table3(i,2))
            break;
        end
    end
    ipr_table3(i,3) = max(pr_table3(j:10,5));
end

% fourth query
h4 = dlmread('h4.txt');
Across = dlmread('across.txt');  % all 34 images
dist4 = zeros(34,1);             % stores canberra distances
for i=1:34
    dist4(i,1) = canberradistt(h4,Across(:,i));
end
[sorted_dist4, locs4] = sort(dist4, 'ascend');
top_ten4 = sorted_dist4(1:10);
top_ten_locs4 = locs4(1:10);
% rank| image_id |correct |current recall |current precision
pr_table4 = zeros(10,5);
count4 =0;
for i =1:10
    pr_table4(i,1) = i;
    pr_table4(i,2) = top_ten_locs4(i);
    if(top_ten_locs4(i) == 9 || top_ten_locs4(i) ==10  )
         count4 = count4+1;
         pr_table4(i,3) = 1;
    else
         pr_table4(i,3) = 0;
    end
    pr_table4(i,4) = count4/2;
    pr_table4(i,5) = count4/i;
end

% interpolating pr_table2
ipr_table4 = zeros(11,3);
for i=1:11
    ipr_table4(i,1) = i;
    ipr_table4(i,2) = (i-1)/10;
    % for precision
    for j =1:10
        if(pr_table4(j,4) >= ipr_table4(i,2))
            break;
        end
    end
    ipr_table4(i,3) = max(pr_table4(j:10,5));
end


% fifth query 

h5 = dlmread('h5.txt');
Across = dlmread('across.txt');  % all 34 images
dist5 = zeros(34,1);             % stores canberra distances
for i=1:34
    dist5(i,1) = canberradistt(h5,Across(:,i));
end
[sorted_dist5, locs5] = sort(dist5, 'ascend');
top_ten5 = sorted_dist5(1:10);
top_ten_locs5 = locs5(1:10);
% rank| image_id |correct |current recall |current precision
pr_table5 = zeros(10,5);
count5 =0;
for i =1:10
    pr_table5(i,1) = i;
    pr_table5(i,2) = top_ten_locs5(i);
    if(top_ten_locs5(i) == 15 || top_ten_locs5(i) ==16  )
         count5 = count5+1;
         pr_table5(i,3) = 1;
    else
         pr_table5(i,3) = 0;
    end
    pr_table5(i,4) = count5/2;
    pr_table5(i,5) = count5/i;
end

% interpolating pr_table2
ipr_table5 = zeros(11,3);
for i=1:11
    ipr_table5(i,1) = i;
    ipr_table5(i,2) = (i-1)/10;
    % for precision
    for j =1:10
        if(pr_table5(j,4) >= ipr_table5(i,2))
            break;
        end
    end
    ipr_table5(i,3) = max(pr_table5(j:10,5));
end


% now averaging ipr_tables

ipr_table_av = zeros(11,3);
for i=1:11
    ipr_table_av(i,1) = ipr_table5(i,1);
    ipr_table_av(i,2) = ipr_table5(i,2);
    ipr_table_av(i,3) = (ipr_table1(i,3)+ipr_table2(i,3)+ipr_table3(i,3)+ipr_table4(i,3)+ipr_table5(i,3))/5;
end
figure;
plot(ipr_table_av(:,2),ipr_table_av(:,3));
xlabel('Recall');
ylabel('Precision');
title('Precision recall curve for CBIR system');