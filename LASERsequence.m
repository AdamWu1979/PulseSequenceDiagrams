close('all');

%Read in GOIAWpulse for shaped pulses
%This is a struct but the .B1 member contains the B1 amplitude modulation
%and .G member contains the gradient
load GOIAWpulse


%%%LINES

RFline = ps_initline('RF', 1);
RFline = ps_line(RFline, 0.5);
RFline = ps_square(RFline, 0.5, 1, '90');
RFline = ps_line(RFline, 0.5);
RFline = ps_shapedpulse(RFline, GOIAWpulse.B1, 1, 1);
RFline = ps_line(RFline, 1);
RFline = ps_shapedpulse(RFline, GOIAWpulse.B1, 1, 1);
RFline = ps_line(RFline, 1);
RFline = ps_shapedpulse(RFline, GOIAWpulse.B1, 1, 1);
RFline = ps_line(RFline, 1);
RFline = ps_shapedpulse(RFline, GOIAWpulse.B1, 1, 1);
RFline = ps_line(RFline, 1);
RFline = ps_shapedpulse(RFline, GOIAWpulse.B1, 1, 1);
RFline = ps_line(RFline, 1);
RFline = ps_shapedpulse(RFline, GOIAWpulse.B1, 1, 1);
RFline = ps_line(RFline, 0.5);
RFline = ps_fid(RFline, 1, 1, 10, 1);


Gxline = ps_initline('Gx', 2);
Gxline = ps_line(Gxline, 1.5);
Gxline = ps_shapedpulse(Gxline, GOIAWpulse.G, 1, 1);
Gxline = ps_line(Gxline, 1);
Gxline = ps_shapedpulse(Gxline, GOIAWpulse.G, 1, 1);
Gxline = ps_line(Gxline, 8.5);


Gyline = ps_initline('Gy', 3);
Gyline = ps_line(Gyline, 5.5);
Gyline = ps_shapedpulse(Gyline, GOIAWpulse.G, 1, 1);
Gyline = ps_line(Gyline, 1);
Gyline = ps_shapedpulse(Gyline, GOIAWpulse.G, 1, 1);
Gyline = ps_line(Gyline, 4.5);

Gzline = ps_initline('Gz', 4);
Gzline = ps_line(Gzline, 9.5);
Gzline = ps_shapedpulse(Gzline, GOIAWpulse.G, 1, 1);
Gzline = ps_line(Gzline, 1);
Gzline = ps_shapedpulse(Gzline, GOIAWpulse.G, 1, 1);
Gzline = ps_line(Gzline, 0.5);



ps_plot(RFline, Gxline, Gyline, Gzline)
