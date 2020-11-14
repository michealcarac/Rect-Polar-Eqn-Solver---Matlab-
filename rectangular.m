%% Rectangular equation simplifier to final rectangular and polar
%Author: Micheal Caracciolo
%@michealcarac on github
%Note: j can also be used in the equations instead of i
%Note: if you do i#/j#, you need to do i*#, or just do #i 
%% Zero out values, do not edit
A = 0;
theta = 0;
matrix = 0;
name = "";
%% Define Variables/Symbolic Variables, edit
syms V1 V2 %Symbolic value(s) (Not known, to be solved for) Example
V3 = 24i; %Example

%% Define Equation(s), edit
%Change Variables and Eqn to what you need 
eqn1 = 5 == (V1 - V3)/(-4i) + (V1-V2)/(-8i); %Example
eqn2 = (V1-V2)/(-8i) == (V2)/(4i) + (V2-V3)/(12); %Example

%% Create the solver, edit values according to the problem and what you're solving for, edit
[V1 V2] = solve([eqn1 eqn2],[V1 V2]); %Change every value in brackets to what needed
%Could also just do ans = 4 + 4i; for example to convert that to polar
matrix = [V1 V2]; %Change values in brackets to what needed
name = ["V1" "V2"]; %Change values in brackets to what needed


%% Loop to calculate all values, do not edit
clc; %Optional, just cleans the command window
for n = 1:length(matrix)
    A = vpa(sqrt((real(matrix(1,n))^2+(imag(matrix(1,n)))^2)),5);
    fprintf("%s:\n", name(1,n))
    if real(matrix(1,n)) > 0
    theta = atan((imag(matrix(1,n)))/(real(matrix(1,n))));
    else if real(matrix(1,n)) < 0
            theta = pi - atan((imag(matrix(1,n)))/(-1*real(matrix(1,n))));
        else if real(matrix(1,n)) == 0
                if imag(matrix(1,n)) < 0
                    theta = pi + pi/2;
                else
                    theta = pi - pi/2;
                end
            end
        end
    end
    theta = vpa(rad2deg(theta),5);
    fprintf("Rectangular = %f + %fi \n", real(matrix(1,n)), imag(matrix(1,n)))
    fprintf("Polar       = %f /_ %f \n", A, theta)
end
clear; %Optional, just cleans the Workspace variables 
