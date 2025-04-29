% Define the messages and their probabilities 
symbols = {'m1', 'm2', 'm3', 'm4', 'm5'}; 
probabilities = [0.4, 0.2, 0.2, 0.1, 0.1]; 
 
% Generate Huffman Dictionary 
[dict, avg_length] = huffmandict(symbols, probabilities); 
 
% Display Huffman Code 
fprintf('Huffman Codes:\n'); 
for i = 1:length(symbols) 
    fprintf('%s: %s\n', symbols{i}, num2str(dict{i,2})); 
end 
 
% Calculate entropy 
entropy = -sum(probabilities .* log2(probabilities)); 
 
% Compute efficiency 
efficiency = (entropy / avg_length) * 100; 
 
% Display results 
fprintf('\nAverage Code Length: %.3f\n', avg_length); 
fprintf('Entropy: %.3f bits\n', entropy); 
fprintf('Code Efficiency: %.2f%%\n', efficiency); 
