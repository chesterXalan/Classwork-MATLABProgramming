function [keep] = NMS(data, thresh)
    x1 = data(:, 1);
    y1 = data(:, 2);
    x2 = data(:, 3);
    y2 = data(:, 4);
    scores = data(:, 5);
    
    areas = (x2 - x1) .* (y2 - y1);
    [~, order] = sort(scores, 'descend');
    
    i = 1;
    while ~isempty(order) % order is not empty
        keep(i) = order(1);
        len = length(order);
        
        xx1 = max(x1(order(1)), x1(order(2:len)));
        yy1 = max(y1(order(1)), y1(order(2:len)));
        xx2 = min(x2(order(1)), x2(order(2:len)));
        yy2 = min(y2(order(1)), y2(order(2:len)));
        
        w = max(0, xx2 - xx1);
        h = max(0, yy2 - yy1);

        inter = w .* h;
        union = areas(order(1)) + areas(order(2:len)) - inter;
        
        iou = inter ./ union;
        ids = find(iou <= thresh);
        order = order(ids + 1);

        i = i + 1;
    end
end
