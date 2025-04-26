
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
            %% Setup
            board = [
                0, 0, 0, 1, 0, 0, 0;
                0, 0, 1, 1, 1, 0, 0;
                0, 1, 1, 1, 1, 1, 0;
                1, 1, 1, 1, 1, 1, 1;
                ];
            playing = true;
            player = 1;
            %% Gameplay Loop
            while playing
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
                % Display info to user and get input for matches to remove
                fprintf('\n There is %d left in row & %d matches left in total \n', row1MatchCount, matchCount)
                toRemove = 10000;
                while (toRemove > row1MatchCount || toRemove <= 0)
                    toRemove = input(sprintf('Player %d, How many matches do you remove (up to %d)? ', player, row1MatchCount));
                    if toRemove > row1MatchCount
                        fprintf("Please enter %d or less.\n", row1MatchCount);
                        continue
                    elseif toRemove <= 0
                        fprintf("You cannot remove 0 or less matches. \n");
                        continue
                    end
                end
                % Remove matches
                if player == 1
                    board(1, find(head(board,1), toRemove, "first")) = 0;
                else
                    board(1, find(head(board,1), toRemove, "last")) = 0;
                end
                if ismember(1, head(board,1)) == false
                    for i = 1:height(board)-1
                        board(i, :) = board(i+1, :);
                    end
                    board(height(board), :) = [];
                end

                % Change player
                if player == 1
                    player = 2;
                else
                    player = 1;
                end
            end

    end
    % disp(board);
end
