function [matchCount, row1MatchCount] = drawBoard(board)
    % For loop
    matchCount = 0;
    for r = 1:height(board)
        for c = 1:length(board)
            if board(r, c) == 1
                fprintf('I');
                matchCount = matchCount+1;
            else
                fprintf(' ');
            end
        end
        if r == 1
            row1MatchCount = matchCount;
        end
        fprintf('\n');
    end
end