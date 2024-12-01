% Function to generate gaussian random variables of size N
function result = randomVarsGenerator(variance,nValue)
    % Using the normrand() function
    stdDev = sqrt(variance);
    randomVars = normrnd(0,stdDev,[1,nValue]);
    result = [variance] + randomVars;
end

% First Estimator
function firstEstimate = sampleMeanEstimator(nValue, randomVarArray)
    sumRandomVars = sum(randomVarArray);
    mean = sumRandomVars/nValue;
    firstEstimate = mean;
end

% Second Estimator
function secondEstimate = sampleVarianceEstimator(fistEstimate, randomVarsArray, nValue)
    % Array to hold all variance values
    varianceArray = zeros(1,nValue);
    % Index to add values to variance array
    varIndex = 1;
    % Looping through the random variables
    for index = 1:1:size(randomVarsArray,2)
        % Grabbing the current random variable
        currentRV = randomVarsArray(1,index);
        % Getting 1 variance value
        currentVariance = (currentRV - fistEstimate).^2;
        % Adding value to the array
        varianceArray(1, varIndex) = currentVariance;
        % Updating index
        varIndex = varIndex + 1;
    % Summing all of the variances
    sumVariances = sum(varianceArray);
    secondEstimate = (sumVariances)/(nValue - 1);
    end
end

% Third estimator
function thirdEstimate = testEstimator(nValue, randomVarArray)
    % Updating the randon vars
    newVarArray = zeros(1, nValue);
    newVarIndex = 1;
    for varIndex = 1:1:size(randomVarArray,2)
        currentVar = randomVarArray(1,varIndex);
        newVar = currentVar.^2 + 1/4;
        newVarArray(1, newVarIndex) = newVar;
        newVarIndex = newVarIndex + 1;
    end
    % Getting the sum
    sumNewVars = sum(newVarArray);
    runningEstimate = (sumNewVars)/nValue;
    runningEstimate = -1/2 + sqrt(runningEstimate);
    thirdEstimate = runningEstimate;
end

NArray = [50,100,250,500,1000];
%%
% First Evaluation Algorithm

% NArray = [50,100,250,500,1000];

M = 50; % Number of realizations
A = 1;
% This matrix will hold all of the generated estimates across M
realizationsMatrix = zeros(3, size(NArray,2), M);
% realizationMatrixColCounter = 1;
for realization = 1:1:M
    % Generating random variables
    % randomVariables = randomVarsGenerator(currentN, A);
    realizationMatrixColCounter = 1;
    % Getting A1
    for nIndex = 1:1:size(NArray,2)
        % Getting the nValue
        currentN = NArray(1,nIndex);
        % Generating random variables
        randomVariables = randomVarsGenerator(A, currentN);
        % Running the first estimator
        A1 = sampleMeanEstimator(currentN, randomVariables);
        % Running the second estimator
        A2 = sampleVarianceEstimator(A1, randomVariables, currentN);
        % Running the third estimator
        A3 = testEstimator(currentN, randomVariables);
        
        realizationsMatrix(1, realizationMatrixColCounter, realization) = A1;
        realizationsMatrix(2, realizationMatrixColCounter, realization) = A2;
        realizationsMatrix(3, realizationMatrixColCounter, realization) = A3;
        % Incrementing the counter
        realizationMatrixColCounter = realizationMatrixColCounter + 1;
    end

end

%%
% Second Evaluation Algorithm

N = 100;
MArray = [25,50,75,100];
AArray = [0.01,0.1,1,5,10];
saveNames = ["25Realizations","50Realizations","75Realizations","100Realizations"];
% varianceByRealizationMatrix = zeros(3, size(AArray,2),size(MArray,2));
% realizationIndex = 1;
for mIndex = 1:1:size(MArray,2)
    % Picking a realization value
    currentM = MArray(mIndex);
    currentSaveName = saveNames(1, mIndex);
    realizationIndex = 1;
    varianceByRealizationMatrix = zeros(3, size(AArray,2),currentM);
    for runIndex = 1:1:currentM
        % varianceByRealizationMatrix = zeros(3, size(AArray,2),currentM);
        % We will use all the As
        for aIndex = 1:1:size(AArray,2)
            currentA = AArray(1,aIndex);
            % Generating the random variables
            randomVariables = randomVarsGenerator(currentA, N);
            % Running the first estimator
            A1 = sampleMeanEstimator(N, randomVariables);
            % Running the second estimator
            A2 = sampleVarianceEstimator(A1, randomVariables, N);
            % Running the third estimator
            A3 = testEstimator(N, randomVariables);
            % Adding the data to the matrix
            varianceByRealizationMatrix(1, aColumnIndex, realizationIndex) = A1;
            varianceByRealizationMatrix(2, aColumnIndex, realizationIndex) = A2;
            varianceByRealizationMatrix(3, aColumnIndex, realizationIndex) = A3;
            aColumnIndex = aColumnIndex + 1;
        end
        realizationIndex = realizationIndex + 1;
    end
    save(currentSaveName);
end


%%
% Third Evaluation Algorithm

M = 25;
NArray = [50,100,250,500,1000];
AArray = [0.01,0.1,1,5,10];
varianceByRealizationMatrix = zeros(3, size(NArray, 2), M);
saveANames = ["aOneQuestion3","aTwoQuestion3","aThreeQuestion3","aFourQuestion3","aFiveQuestion3"];
for aIndex = 1:1:size(AArray,2)
    currentA = AArray(1,aIndex);
    currentSaveName = saveANames(1,aIndex);
    for realizationIndex = 1:1:M
        % currentA = AArray(1,aIndex);
        % nColumnIndex = 1;
        % realizationIndex= 1;
        % Generating the random variables
        nColumnIndex = 1;
        for nIndex = 1:1:size(NArray, 2)
            % nColumnIndex = 1;
            currentN = NArray(1, nIndex);
            randomVariables = randomVarsGenerator(currentA, currentN);
            % Running the first estimator
            A1 = sampleMeanEstimator(currentN, randomVariables);
            % Running the second estimator
            A2 = sampleVarianceEstimator(A1, randomVariables, currentN);
            % Running the third estimator
            A3 = testEstimator(currentN, randomVariables);
            % Adding the data to the matrix
            varianceByRealizationMatrix(1, nColumnIndex, realizationIndex) = A1;
            varianceByRealizationMatrix(2, nColumnIndex, realizationIndex) = A2;
            varianceByRealizationMatrix(3, nColumnIndex, realizationIndex) = A3;
            nColumnIndex = nColumnIndex + 1;
        end
    end
    save(currentSaveName);
end
