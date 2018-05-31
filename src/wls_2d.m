
A = [2*(ac(1,1) - ac(4,1)),2*(ac(1,2) - ac(4,2));
     2*(ac(2,1) - ac(4,1)),2*(ac(2,2) - ac(4,2));
     2*(ac(3,1) - ac(4,1)),2*(ac(3,2) - ac(4,2));
];

B1 = [ac(1,1)^2 - ac(4,1)^2 + ac(1,2)^2 - ac(4,2)^2;
      ac(2,1)^2 - ac(4,1)^2 + ac(2,2)^2 - ac(4,2)^2;
      ac(3,1)^2 - ac(4,1)^2 + ac(3,2)^2 - ac(4,2)^2;
];

X = zeros(N,2);
for k=1:N
    B2 = [dis(k,4)^2 - dis(k,1)^2,dis(k,4)^2 - dis(k,2)^2,dis(k,4)^2 - dis(k,3)^2]';
    B = B1 + B2;
    X(k,:) = inv(A'*A)*A'*B;
end

figure;
plot((1:N),X(:,1),'b');grid on,xlabel('sample num'),ylabel('m'),title('position.x');
figure;
plot((1:N),X(:,2),'b');grid on,xlabel('sample num'),ylabel('m'),title('position.y');