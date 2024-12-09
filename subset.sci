
function subsetSum(S, n, d, currentSubset, currentIndex)
    if d == 0 then
        disp("Subset found:");
        disp(currentSubset);
        return;
    end
    
    if currentIndex == n then
        return;
    end
    
    currentSubset(currentIndex + 1) = S(currentIndex + 1); // Include the element
    subsetSum(S, n, d - S(currentIndex + 1), currentSubset, currentIndex + 1);
    
    currentSubset(currentIndex + 1) = []; 
    subsetSum(S, n, d, currentSubset, currentIndex + 1);
endfunction
function findSubset(S, n, d)
    currentSubset = [];
    subsetSum(S, n, d, currentSubset, 0);
    
    disp("No subset with the given sum exists.");
endfunction

S = [3, 34, 4, 12, 5, 2];  
d = 9;  // The target sum
n = length(S);  

findSubset(S, n, d);  