n=0:1:15;
a=sin(2*pi/4.*n);
b=sin(2*pi/8.*n);

 %<-- calculate the dot product here
 dp = a * b.';
 
 
display(dp);
