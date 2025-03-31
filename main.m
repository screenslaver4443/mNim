% This file contains the game NIM. (https://en.wikipedia.org/wiki/Nim)

% Initialize variables
state = "game"; % game, title
playing = true;

% Switch statement to differentiate between title screen and game
while playing
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
            % For loop
            for r = 1:height(board)
                for c = 1:length(board)
                    if board(r, c) == 1
                        fprintf('I');
                    else
                        fprintf(' ');
                    end
                end
                fprintf('\n');
            end
            break %Temporary break to prevent infinite loop

            % disp(board);
    end
end