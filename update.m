function [] = update(h, k, R1, R2, R3, R4, L1, L2, L3, L4)
%% 
%g�owot�w
myline_update(h(1),R1(k,:,4), R2(k,:,4));
myline_update(h(2),R2(k,:,4), R3(k,:,4));
myline_update(h(3),R3(k,:,4), R4(k,:,4));
myline_update(h(4),R1(k,:,4), L1(k,:,4));
myline_update(h(5),L1(k,:,4), L2(k,:,4));
myline_update(h(6),L2(k,:,4), L3(k,:,4));
myline_update(h(7),L3(k,:,4), L4(k,:,4));
myline_update(h(8),L4(k,:,4), R4(k,:,4));

%R1
myline_update(h(9),R1(k,:,4), R1(k,:,3));
myline_update(h(10),R1(k,:,3), R1(k,:,2));
myline_update(h(11),R1(k,:,2), R1(k,:,1));

%R2
myline_update(h(12),R2(k,:,4), R2(k,:,3));
myline_update(h(13),R2(k,:,3), R2(k,:,2));
myline_update(h(14),R2(k,:,2), R2(k,:,1));

%R3
myline_update(h(15),R3(k,:,4), R3(k,:,3));
myline_update(h(16),R3(k,:,3), R3(k,:,2));
myline_update(h(17),R3(k,:,2), R3(k,:,1));

%R4
myline_update(h(18),R4(k,:,4), R4(k,:,3));
myline_update(h(19),R4(k,:,3), R4(k,:,2));
myline_update(h(20),R4(k,:,2), R4(k,:,1));

%L1
myline_update(h(21),L1(k,:,4), L1(k,:,3));
myline_update(h(22),L1(k,:,3), L1(k,:,2));
myline_update(h(23),L1(k,:,2), L1(k,:,1));

%L2
myline_update(h(24),L2(k,:,4), L2(k,:,3));
myline_update(h(25),L2(k,:,3), L2(k,:,2));
myline_update(h(26),L2(k,:,2), L2(k,:,1));

%L3
myline_update(h(27),L3(k,:,4), L3(k,:,3));
myline_update(h(28),L3(k,:,3), L3(k,:,2));
myline_update(h(29),L3(k,:,2), L3(k,:,1));

%L4
myline_update(h(30),L4(k,:,4), L4(k,:,3));
myline_update(h(31),L4(k,:,3), L4(k,:,2));
myline_update(h(32),L4(k,:,2), L4(k,:,1));

%% 
%punkty
[x,y,z] = sphere;
a=0.5;
for i=1:4
    set(h(32+i), 'xdata', a*x+R1(k,1,i), 'ydata', a*y+R1(k,2,i), 'zdata', a*z+R1(k,3,i))
    set(h(36+i), 'xdata', a*x+R2(k,1,i), 'ydata', a*y+R2(k,2,i), 'zdata', a*z+R2(k,3,i))
    set(h(40+i), 'xdata', a*x+R3(k,1,i), 'ydata', a*y+R3(k,2,i), 'zdata', a*z+R3(k,3,i))
    set(h(44+i), 'xdata', a*x+R4(k,1,i), 'ydata', a*y+R4(k,2,i), 'zdata', a*z+R4(k,3,i))
    set(h(48+i), 'xdata', a*x+L1(k,1,i), 'ydata', a*y+L1(k,2,i), 'zdata', a*z+L1(k,3,i))
    set(h(52+i), 'xdata', a*x+L2(k,1,i), 'ydata', a*y+L2(k,2,i), 'zdata', a*z+L2(k,3,i))
    set(h(56+i), 'xdata', a*x+L3(k,1,i), 'ydata', a*y+L3(k,2,i), 'zdata', a*z+L3(k,3,i))
    set(h(60+i), 'xdata', a*x+L4(k,1,i), 'ydata', a*y+L4(k,2,i), 'zdata', a*z+L4(k,3,i))
end



end

