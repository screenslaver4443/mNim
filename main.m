
% Initialize variables
state = "game"; % game, title
% This file contains the game NIM. (https://en.wikipedia.org/wiki/Nim)
running = true;

% Switch statement to differentiate between title screen and game
while running
    switch state
        case "title"
            % Placeholder

        case "game"
            board = [
                0, 0, 0, 1, 0, 0, 0;
                0, 0, 1, 1, 1, 0, 0;
                0, 1, 1, 1, 1, 1, 0;
                1, 1, 1, 1, 1, 1, 1;
                ];
            playing = true;
            while playing
                matchcount = 0;
                % For loop
                for r = 1:height(board)
                    for c = 1:length(board)
                        if board(r, c) == 1
                            fprintf('I');
                            matchcount = matchcount+1;
                        else
                            fprintf(' ');
                        end
                    end
                    if r == 1
                        row1MatchCount = matchcount;
                    end
                    fprintf('\n');
                end
                % Display info to user and get input for matches to remove
                fprintf('\n There is %d left in row & %d matches left in total \n', row1MatchCount, matchcount)
                toRemove = 10000;
                while toRemove > row1MatchCount
                    toRemove = input(sprintf('How many matches do you remove (up to %d)? ', row1MatchCount));
                    if toRemove > row1MatchCount
                        fprintf("Please enter less than %d", row1MatchCount);
                    end
                end

            end
    end
    % disp(board);
end
