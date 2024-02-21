function [] = drawRectangle(data)
    position = data(1:4);
    if data(6) == 0
        color = 'r'; % red
        txt = sprintf('cat: %.2f', data(5));
    elseif data(6) == 1
        color = 'g'; % green
        txt = sprintf('dog: %.2f', data(5));
    end

    rec_pos = [position(1), position(2), ... % x, y(top-left point)
               position(3)-position(1), position(4)-position(2)]; % w, h
    
    rectangle('Position', rec_pos, ...
              'LineWidth', 2, ...
              'EdgeColor', color)

    text_pos = [rec_pos(1), rec_pos(2)-17, 75, 15];
    
    rectangle('Position', text_pos, ...
              'LineWidth', 2, ...
              'EdgeColor', color, ...
              'FaceColor', color)

    text(text_pos(1)+2, text_pos(2)+7, txt, ...
         'FontSize', 10, ...
         'FontName', 'Comic Sans MS')
end
