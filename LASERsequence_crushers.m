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
Gxline = ps_line(Gxline, 1.3);
Gxline = ps_square(Gxline, 0.2, 1.2, false);            %crusher
Gxline = ps_shapedpulse(Gxline, GOIAWpulse.G, 1, 1);
Gxline = ps_square(Gxline, 0.2, 1.2, false);            %crusher
Gxline = ps_line(Gxline, 0.6);
Gxline = ps_square(Gxline, 0.2, 1.2, false);            %crusher
Gxline = ps_shapedpulse(Gxline, GOIAWpulse.G, 1, 1);
Gxline = ps_square(Gxline, 0.2, 1.2, false);            %crusher
Gxline = ps_line(Gxline, 0.6);
Gxline = ps_square(Gxline, 0.2, 1.1, true);            %crusher
Gxline = ps_line(Gxline, 1);
Gxline = ps_square(Gxline, 0.2, 1.1, true);            %crusher
Gxline = ps_line(Gxline, 0.6);
Gxline = ps_square(Gxline, 0.2, 1.2, true);            %crusher
Gxline = ps_line(Gxline, 1);
Gxline = ps_square(Gxline, 0.2, 1.2, true);            %crusher
Gxline = ps_line(Gxline, 0.6);
Gxline = ps_square(Gxline, 0.2, 1.1, true);            %crusher
Gxline = ps_line(Gxline, 1);
Gxline = ps_square(Gxline, 0.2, 1.1, true);            %crusher
Gxline = ps_line(Gxline, 0.6);
Gxline = ps_square(Gxline, 0.2, 1.2, true);            %crusher
Gxline = ps_line(Gxline, 1);
Gxline = ps_square(Gxline, 0.2, 1.2, true);            %crusher
Gxline = ps_line(Gxline, 0.3);

Gyline = ps_initline('Gy', 3);
Gyline = ps_line(Gyline, 1.3);
Gyline = ps_square(Gyline, 0.2, 1.1, true);            %crusher
Gyline = ps_line(Gyline, 1);
Gyline = ps_square(Gyline, 0.2, 1.1, true);            %crusher
Gyline = ps_line(Gyline, 0.6);
Gyline = ps_square(Gyline, 0.2, 1.2, true);            %crusher
Gyline = ps_line(Gyline, 1);
Gyline = ps_square(Gyline, 0.2, 1.2, true);            %crusher
Gyline = ps_line(Gyline, 0.6);
Gyline = ps_square(Gyline, 0.2, 1.1, false);
Gyline = ps_shapedpulse(Gyline, GOIAWpulse.G, 1, 1);
Gyline = ps_square(Gyline, 0.2, 1.1, false);
Gyline = ps_line(Gyline, 0.6);
Gyline = ps_square(Gyline, 0.2, 1.2, false);
Gyline = ps_shapedpulse(Gyline, GOIAWpulse.G, 1, 1);
Gyline = ps_square(Gyline, 0.2, 1.2, false);
Gyline = ps_line(Gyline, 0.6);
Gyline = ps_square(Gyline, 0.2, 1.1, true);            %crusher
Gyline = ps_line(Gyline, 1);
Gyline = ps_square(Gyline, 0.2, 1.1, true);            %crusher
Gyline = ps_line(Gyline, 0.6);
Gyline = ps_square(Gyline, 0.2, 1.2, true);            %crusher
Gyline = ps_line(Gyline, 1);
Gyline = ps_square(Gyline, 0.2, 1.2, true);            %crusher
Gyline = ps_line(Gyline, 0.3);


Gzline = ps_initline('Gz', 4);
Gzline = ps_line(Gzline, 1.3);
Gzline = ps_square(Gzline, 0.2, 1.1, true);            %crusher
Gzline = ps_line(Gzline, 1);
Gzline = ps_square(Gzline, 0.2, 1.1, true);            %crusher
Gzline = ps_line(Gzline, 0.6);
Gzline = ps_square(Gzline, 0.2, 1.2, true);            %crusher
Gzline = ps_line(Gzline, 1);
Gzline = ps_square(Gzline, 0.2, 1.2, true);            %crusher
Gzline = ps_line(Gzline, 0.6);
Gzline = ps_square(Gzline, 0.2, 1.1, true);            %crusher
Gzline = ps_line(Gzline, 1);
Gzline = ps_square(Gzline, 0.2, 1.1, true);            %crusher
Gzline = ps_line(Gzline, 0.6);
Gzline = ps_square(Gzline, 0.2, 1.2, true);            %crusher
Gzline = ps_line(Gzline, 1);
Gzline = ps_square(Gzline, 0.2, 1.2, true);            %crusher
Gzline = ps_line(Gzline, 0.6);
Gzline = ps_square(Gzline, 0.2, 1.1, false);
Gzline = ps_shapedpulse(Gzline, GOIAWpulse.G, 1, 1);
Gzline = ps_square(Gzline, 0.2, 1.1, false);
Gzline = ps_line(Gzline, 0.6);
Gzline = ps_square(Gzline, 0.2, 1.2, false);
Gzline = ps_shapedpulse(Gzline, GOIAWpulse.G, 1, 1);
Gzline = ps_square(Gzline, 0.2, 1.2, false);
Gzline = ps_line(Gzline, 0.3);



ps_plot(RFline, Gxline, Gyline, Gzline)
