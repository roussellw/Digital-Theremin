%Engineer: William L. Roussell
%Create Date: 8/15/2018
%Description: Vector to be used in the creation of lookup table for digital
%Theremin ENGS 31 project.

%integers=round(200*(rand(1,8000)-0.5));
integers=linspace(-1,1,255);
 

binary{i}=dec2bin(typecast(int16(integers(i)),'uint16'));
