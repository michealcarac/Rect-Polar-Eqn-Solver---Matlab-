%Author: Micheal Caracciolo
%@michealcarac on github
function toPolar(ans) %%Enter as a + bi or a + i*b (you can also use j)
A = 0;
Theta = 0;
if real(ans) > 0
    Theta = atan((imag(ans))/(real(ans)));
else if real(ans) < 0
        Theta = pi - atan((imag(ans))/(-1*real(ans)));
    else if real(ans) == 0
            if imag(ans) < 0
                Theta = pi + pi/2;
            else
                Theta = pi - pi/2;
            end
        end
    end
end
A = vpa(sqrt((real(ans))^2+(imag(ans))^2),5);
Theta = vpa(rad2deg(Theta),5);
fprintf("Polar       = %f /_ %f \n", A, Theta)
