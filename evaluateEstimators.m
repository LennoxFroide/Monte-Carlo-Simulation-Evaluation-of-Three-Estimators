%{
% First Estimate
estimateOne = realizationsMatrix(1,:,:);
meanEstimateOne = mean(estimateOne(:));
varianceEstimateOne = var(estimateOne(:));

% Second Estimate
estimateTwo = realizationsMatrix(2,:,:);
meanEstimateTwo = mean(estimateTwo(:));
varianceEstimateTwo = var(estimateTwo(:));

% Third Estimate
estimateThree = realizationsMatrix(3,:,:);
meanEstimateThree = mean(estimateThree(:));
varianceEstimaeThree = var(estimateThree(:));

%histogram(estimateOne(:));
%title('QOneHistA1')
%histogram(estimateTwo(:));
%title('QOneHistA2')
histogram(estimateThree(:));
title('QOneHistA3')
%}

%{
For each of the 3 estimators for a specific N value, across M
we evalute the mean,var and hist
%}

% N is 50
firstEst50 = realizationsMatrix(1,1,:);
secndEst50 = realizationsMatrix(2,1,:);
thirdEst50 = realizationsMatrix(3,1,:);
% N is 100
firstEst100 = realizationsMatrix(1,2,:);
secndEst100 = realizationsMatrix(2,2,:);
thirdEst100 = realizationsMatrix(3,2,:);
% N is 250
firstEst250 = realizationsMatrix(1,3,:);
secndEst250 = realizationsMatrix(2,3,:);
thirdEst250 = realizationsMatrix(3,3,:);
% N is 500
firstEst500 = realizationsMatrix(1,4,:);
secndEst500 = realizationsMatrix(2,4,:);
thirdEst500 = realizationsMatrix(3,4,:);
% N is 1000
firstEst1000 = realizationsMatrix(1,5,:);
secndEst1000 = realizationsMatrix(2,5,:);
thirdEst1000 = realizationsMatrix(3,5,:);

%%

% MEANS
% N is 50
Mean50FirstEst = mean(firstEst50(:));
Mean50SecondEst = mean(secndEst50(:));
Mean50ThirdEst = mean(thirdEst50(:));
% N is 100
Mean100FirstEst = mean(firstEst100(:));
Mean100SecondEst = mean(secndEst100(:));
Mean100ThirdEst = mean(thirdEst100(:));
% N is 250
Mean250FirstEst = mean(firstEst250(:));
Mean250SecondEst = mean(secndEst250(:));
Mean250ThirdEst = mean(thirdEst250(:));
% N is 500
Mean500FirstEst = mean(firstEst500(:));
Mean500SecondEst = mean(secndEst500(:));
Mean500ThirdEst = mean(thirdEst500(:));
% N is 1000
Mean1000FirstEst = mean(firstEst1000(:));
Mean1000SecondEst = mean(secndEst1000(:));
Mean1000ThirdEst = mean(thirdEst1000(:));
% Matrix to have the estimates across N
estOneValues = [Mean50FirstEst, Mean100FirstEst, Mean250FirstEst, Mean500FirstEst, Mean1000FirstEst];
estTwoValues = [Mean50SecondEst, Mean100SecondEst, Mean250SecondEst, Mean500SecondEst, Mean1000SecondEst];
extThreeValues = [Mean50ThirdEst, Mean100ThirdEst, Mean250ThirdEst, Mean500ThirdEst, Mean1000ThirdEst];
% Joint Means
EstimatesMeansQ1 = [estOneValues;estTwoValues;extThreeValues];

%%

% VARIANCE
% N is 50
Var50FirstEst = var(firstEst50(:));
Var50SecondEst = var(secndEst50(:));
Var50ThirdEst = var(thirdEst50(:));
% N is 100
Var100FirstEst = var(firstEst100(:));
Var100SecondEst = var(secndEst100(:));
Var100ThirdEst = var(thirdEst100(:));
% N is 250
Var250FirstEst = var(firstEst250(:));
Var250SecondEst = var(secndEst250(:));
Var250ThirdEst = var(thirdEst250(:));
% N is 500
Var500FirstEst = var(firstEst500(:));
Var500SecondEst = var(secndEst500(:));
Var500ThirdEst = var(thirdEst500(:));
% N is 1000
Var1000FirstEst = var(firstEst1000(:));
Var1000SecondEst = var(secndEst1000(:));
Var1000ThirdEst = var(thirdEst1000(:));
% Matrix to have the estimates across N
estOneValues = [Var50FirstEst, Var100FirstEst, Var250FirstEst, Var500FirstEst, Var1000FirstEst];
estTwoValues = [Var50SecondEst, Var100SecondEst, Var250SecondEst, Var500SecondEst, Var1000SecondEst];
estThreeValues = [Var50ThirdEst, Var100ThirdEst, Var250ThirdEst, Var500ThirdEst, Var1000ThirdEst];
EstimateVarsQ1 = [estOneValues; estTwoValues; estThreeValues];

%%
% HISTOGRAMS
% N is 50
% hist50FirstEst = histogram(thirdEst1000(:));
%{
Var50SecondEst = var(secndEst50(:));
Var50ThirdEst = var(thirdEst50(:));
% N is 100
Var100FirstEst = var(firstEst100(:));
Var100SecondEst = var(secndEst100(:));
Var100ThirdEst = var(thirdEst100(:));
% N is 250
Var250FirstEst = var(firstEst250(:));
Var250SecondEst = var(secndEst250(:));
Var250ThirdEst = var(thirdEst250(:));
% N is 500
Var500FirstEst = var(firstEst500(:));
Var500SecondEst = var(secndEst500(:));
Var500ThirdEst = var(thirdEst500(:));
% N is 1000
Var1000FirstEst = var(firstEst1000(:));
Var1000SecondEst = var(secndEst1000(:));
Var1000ThirdEst = var(thirdEst1000(:));
%}
%{
histogram(firstEst50(:),'FaceColor','r');
hold on;
histogram(firstEst100(:),'FaceColor','g');
histogram(firstEst250(:),'FaceColor','b');
histogram(firstEst500(:),'FaceColor','y');
histogram(firstEst1000(:),'FaceColor','k');
%}

%{
For this second question each cell is a specific A for a given estimator
with fixed number of realizations.

%}

%{
estTwoAOne50 = varianceByRealizationMatrix(3,1,:);
estOneAOne25Mean = mean(estTwoAOne50(:));
estOneAOne25Var = var(estTwoAOne50(:));
%--------------------------------------------------------------%
estTwoATwo50 = varianceByRealizationMatrix(3,2,:);
estOneATwo25Mean = mean(estTwoATwo50(:));
estOneATwo25Var = var(estTwoATwo50(:));
%---------------------------------------------------------------%
estTwoAThree50 = varianceByRealizationMatrix(3,3,:);
estOneAThree25Mean = mean(estTwoAThree50(:));
estOneAThree25Var = var(estTwoAThree50(:));
%--------------------------------------------------------------%
estTwoAFour50 = varianceByRealizationMatrix(3,4,:);
estOneAFour25Mean = mean(estTwoAFour50(:));
estOneAFour25Var = var(estTwoAFour50(:));
%---------------------------------------------------------------%
estTwoAFive50 = varianceByRealizationMatrix(3,5,:);
estOneAFive25Mean = mean(estTwoAFive50(:));
estOneAFive25Var = var(estTwoAFive50(:));
% FOR M = 25
meanArrayEstThree100M = [estOneAOne25Mean, estOneATwo25Mean, estOneAThree25Mean, estOneAFour25Mean, estOneAFive25Mean];
varArrayEstThree100M = [estOneAOne25Var, estOneATwo25Var, estOneAThree25Var, estOneAFour25Var, estOneAFive25Var];
%}

%{
    For the third question, the values of N change while M is fixed.
    For each of the A values we will get the mean and variance.
%}


aTwoN50 = varianceByRealizationMatrix(3,1,:);
aTwoN100 = varianceByRealizationMatrix(3,2,:);
aTwoN250 = varianceByRealizationMatrix(3,3,:);
aTwoN500 = varianceByRealizationMatrix(3,4,:);
aTwoN1000 = varianceByRealizationMatrix(3,5,:);
% MEANS
aOneN50Mean = mean(aTwoN50(:));
aOneN100Mean = mean(aTwoN100(:));
aOneN250Mean = mean(aTwoN250(:));
aOneN500Mean = mean(aTwoN500(:));
aOneN1000Mean = mean(aTwoN1000(:));
% VARIANCES
aOneN50Var = var(aTwoN50(:));
aOneN100Var = var(aTwoN100(:));
aOneN250Var = var(aTwoN250(:));
aOneN500Var = var(aTwoN500(:));
aOneN1000Var = var(aTwoN1000(:));

thirdEstAFiveMeans = [aOneN50Mean, aOneN100Mean, aOneN250Mean, aOneN500Mean, aOneN1000Mean];
thirdEstAFiveVars = [aOneN50Var, aOneN100Var, aOneN250Var, aOneN500Var, aOneN1000Var];

%aFiveMeansQ3 = [aOneN50Mean, aOneN100Mean, aOneN250Mean, aOneN500Mean, aOneN1000Mean];
%aFiveVarQ3 = [aOneN50Var, aOneN100Var, aOneN250Var, aOneN500Var, aOneN1000Var];

%EstThreeOverallVarsQ3 = [thirdEstAOneVars; thirdEstATwoVars; thirdEstAThreeVars; thirdEstAFourVars; thirdEstAFiveVars];
%{
OverallVars25MQ2 = [varArray25M;varArrayEstTwo25M; varArrayEstThree25M];
OverallVars50MQ2 = [varArray50M; varArrayEstTwo50M; varArrayEstThree50M];
OverallVars75MQ2 = [varArray75M; varArrayEstTwo75M; varArrayEstThree75M];
overallVars100MQ2 = [varArray100M; varArrayEstTwo100M; varArrayEstThree100M];

% overallVars25MQ2 = [varA]
%}
