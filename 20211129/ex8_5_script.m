clc; clear all;

values = [0.17 0.5 1 1.5];
for a = values
    set_param('ex8_5/Transfer Fcn1', 'Numerator', '[a 1]')
    sim('ex8_5')
    
    plot(output)
    hold on
end
