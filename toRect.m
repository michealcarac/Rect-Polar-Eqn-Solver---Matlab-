function toRect(A,theta) %IN DEGREES, RAD --> DEGREES = rad*180/pi
rad = theta*pi/180;
a = A*cos(rad)
b = A*sin(rad);
if a < .00001 & a > 0 %Otherwise matlab will give you something like 1*10^-15 instead of zero, remove for higher precision
    a = 0;
end
Rect = vpa(a + b*i,5)