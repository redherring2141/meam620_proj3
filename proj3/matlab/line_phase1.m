a=[0,0,-1].';
b=[1,2,-2].'; 
[total_time, a0, a1, a2, a3, a4, a5] = line_ab_real(a, b);

POS = []; 
for t=1:total_time
    pos = a0.'+a1.'*t+a2.'*t^2+a3.'*t^3+a4.'*t^4+a5.'*t^5;
    POS = [POS pos];
end

plot3(POS(1,:), POS(2,:), POS(3,:))
    

fileID = fopen('linetraj.txt', 'w');
fprintf(fileID, '\n%0.9f ',  total_time);
fprintf(fileID,'%0.9f ',a0, a1, a2, a3, a4, a5);
fclose(fileID);
