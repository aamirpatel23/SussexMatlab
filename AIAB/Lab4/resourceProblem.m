Max_Volume = 50;

%benefit
B = [6    19     7     1    13    17     3    18    16    20     5    15    12    11     9     2    14     4    10     8];

%volume
V = [10     5    15    18     1    17    12    19    16     4     9    20    13     7     3     2     6    11     8    14];


gen = 4000; % number of generations / number of matchups
pop = 100;
local = 5;
cross = 0.5;

[winner,winnerInd,fitRec,popGens] = tournament(B,V,Max_Volume,pop,gen,local,cross);

x = linspace(1,gen,gen);
figure;plot(x,fitRec');

[sortedValues,sortIndex] = sort(fitRec(:,end),'descend');  % Sort the values in
maxIndex = sortIndex(1:4);                             %   descending order retrun top 4 indices

solutions = popGens(maxIndex,:);
save('solutions.mat','solutions');
