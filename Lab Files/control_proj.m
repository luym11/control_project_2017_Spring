% 4 dim y case
syse = ss(A, [B,ones(4, 1)],C, [D, ones(4,1)]);
RN = eye(4); 
[KEST1,Kf1,eigenKal1] = kalman(syse,1,RN);

% 2 dim y case
syse2 = ss(A, [B, ones(4,1)], [eye(2), zeros(2,2)], [zeros(2,2), ones(2,1)]);
RN2 = eye(2); 
[KEST2,Kf2,eigenKal2] = kalman(syse2,1,RN2);