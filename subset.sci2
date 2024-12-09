
function printSubset(subset)
    disp("Subset found:");
    disp(subset);
endfunction

function subsetSum(S, n, d, currentSubset, currentIndex)
    if d == 0 then
        printSubset(currentSubset);
        return;
    end
    if currentIndex == n then
        return;
    end
    currentSubset(currentIndex + 1) = S(currentIndex + 1);  
    subsetSum(S, n, d - S(currentIndex + 1), currentSubset, currentIndex + 1);
    currentSubset(currentIndex + 1) = [];  
    subsetSum(S, n, d, currentSubset, currentIndex + 1);
endfunction

function findSubset(S, n, d)
    currentSubset = [];
    subsetSum(S, n, d, currentSubset, 0);
    
    disp("No subset with the given sum exists.");
endfunction
S = [1, 2, 5, 6, 8];  // The set of integers
d = 9;  // The target sum
n = length(S);  // Number of elements in the set
findSubset(S, n, d);
