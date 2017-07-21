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
Gxline = ps_line(Gxline, 1.2);
Gxline = ps_trapz(Gxline, 0.3, 1.2, 0.1, [0,1]);            %crusher
Gxline = ps_shapedpulse(Gxline, GOIAWpulse.G, 1, 1);
Gxline = ps_trapz(Gxline, 0.3, 1.2, 0.1, [1,0]);            %crusher
Gxline = ps_line(Gxline, 0.4);
Gxline = ps_trapz(Gxline, 0.3, 1.2, 0.1, [0,1]);            %crusher
Gxline = ps_shapedpulse(Gxline, GOIAWpulse.G, 1, 1);
Gxline = ps_trapz(Gxline, 0.3, 1.2, 0.1, [1,0]);            %crusher
Gxline = ps_line(Gxline, 0.4);
Gxline = ps_trapz(Gxline, 0.3, 1.1, 0.1);            %crusher
Gxline = ps_line(Gxline, 1);
Gxline = ps_trapz(Gxline, 0.3, 1.1, 0.1);            %crusher
Gxline = ps_line(Gxline, 0.4);
Gxline = ps_trapz(Gxline, 0.3, 1.2, 0.1);            %crusher
Gxline = ps_line(Gxline, 1);
Gxline = ps_trapz(Gxline, 0.3, 1.2, 0.1);            %crusher
Gxline = ps_line(Gxline, 0.4);
Gxline = ps_trapz(Gxline, 0.3, 1.1, 0.1);            %crusher
Gxline = ps_line(Gxline, 1);
Gxline = ps_trapz(Gxline, 0.3, 1.1, 0.1);            %crusher
Gxline = ps_line(Gxline, 0.4);
Gxline = ps_trapz(Gxline, 0.3, 1.2, 0.1);            %crusher
Gxline = ps_line(Gxline, 1);
Gxline = ps_trapz(Gxline, 0.3, 1.2, 0.1);            %crusher
Gxline = ps_line(Gxline, 0.3);

Gyline = ps_initline('Gy', 3);
Gyline = ps_line(Gyline, 1.2);
Gyline = ps_trapz(Gyline, 0.3, 1.1, 0.1);            %crusher
Gyline = ps_line(Gyline, 1);
Gyline = ps_trapz(Gyline, 0.3, 1.1, 0.1);            %crusher
Gyline = ps_line(Gyline, 0.4);
Gyline = ps_trapz(Gyline, 0.3, 1.2, 0.1);            %crusher
Gyline = ps_line(Gyline, 1);
Gyline = ps_trapz(Gyline, 0.3, 1.2, 0.1);            %crusher
Gyline = ps_line(Gyline, 0.4);
Gyline = ps_trapz(Gyline, 0.3, 1.1, 0.1, [0,1]);
Gyline = ps_shapedpulse(Gyline, GOIAWpulse.G, 1, 1);
Gyline = ps_trapz(Gyline, 0.3, 1.1, 0.1, [1,0]);
Gyline = ps_line(Gyline, 0.4);
Gyline = ps_trapz(Gyline, 0.3, 1.2, 0.1, [0,1]);
Gyline = ps_shapedpulse(Gyline, GOIAWpulse.G, 1, 1);
Gyline = ps_trapz(Gyline, 0.3, 1.2, 0.1, [1,0]);
Gyline = ps_line(Gyline, 0.4);
Gyline = ps_trapz(Gyline, 0.3, 1.1, 0.1);            %crusher
Gyline = ps_line(Gyline, 1);
Gyline = ps_trapz(Gyline, 0.3, 1.1, 0.1);            %crusher
Gyline = ps_line(Gyline, 0.4);
Gyline = ps_trapz(Gyline, 0.3, 1.2, 0.1);            %crusher
Gyline = ps_line(Gyline, 1);
Gyline = ps_trapz(Gyline, 0.3, 1.2, 0.1);            %crusher
Gyline = ps_line(Gyline, 0.3);


Gzline = ps_initline('Gz', 4);
Gzline = ps_line(Gzline, 1.2);
Gzline = ps_trapz(Gzline, 0.3, 1.1, 0.1);            %crusher
Gzline = ps_line(Gzline, 1);
Gzline = ps_trapz(Gzline, 0.3, 1.1, 0.1);            %crusher
Gzline = ps_line(Gzline, 0.4);
Gzline = ps_trapz(Gzline, 0.3, 1.2, 0.1);            %crusher
Gzline = ps_line(Gzline, 1);
Gzline = ps_trapz(Gzline, 0.3, 1.2, 0.1);            %crusher
Gzline = ps_line(Gzline, 0.4);
Gzline = ps_trapz(Gzline, 0.3, 1.1, 0.1);            %crusher
Gzline = ps_line(Gzline, 1);
Gzline = ps_trapz(Gzline, 0.3, 1.1, 0.1);            %crusher
Gzline = ps_line(Gzline, 0.4);
Gzline = ps_trapz(Gzline, 0.3, 1.2, 0.1);            %crusher
Gzline = ps_line(Gzline, 1);
Gzline = ps_trapz(Gzline, 0.3, 1.2, 0.1);            %crusher
Gzline = ps_line(Gzline, 0.4);
Gzline = ps_trapz(Gzline, 0.3, 1.1, 0.1, [0,1]);
Gzline = ps_shapedpulse(Gzline, GOIAWpulse.G, 1, 1);
Gzline = ps_trapz(Gzline, 0.3, 1.1, 0.1, [1,0]);
Gzline = ps_line(Gzline, 0.3);
Gzline = ps_trapz(Gzline, 0.3, 1.2, 0.1, [0,1]);
Gzline = ps_shapedpulse(Gzline, GOIAWpulse.G, 1, 1);
Gzline = ps_trapz(Gzline, 0.3, 1.2, 0.1, [1,0]);
Gzline = ps_line(Gzline, 0.3);



ps_plot(RFline, Gxline, Gyline, Gzline)
