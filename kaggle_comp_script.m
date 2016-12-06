%% Read training data in to a table
train_tmp = readtable('pml_train.csv');

train_clean = zeros(size(train_tmp));
% Copy over the IDs
train_clean(:,1) = table2array(train_tmp(:,1));

%% Loop through each of the categorical variables (cols 2-117)
%  Find unique categories and map to values
col = 2;
tmp = train_tmp(:,col);
tmp_unique = unique(tmp);
cat_num = size(tmp_unique,1);
for curr = 1:cat_num
    cat = table2array(tmp_unique(curr,1))
end

