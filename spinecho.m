% An example using my ps_ functions to make a simple pulse sequence diagram

close('all')

%Make the RF line for the graph
RFline = ps_initline('RF', 1);                  %Initialise at position 1
RFline = ps_line(RFline,0.5);                   %Flat line for 0.5
RFline = ps_square(RFline, 0.5, 1, '90');       %Square pulse, width 0.5, height 1, label '90'
RFline = ps_line(RFline, 3);                    %Flat line for 3
RFline = ps_square(RFline, 1, 1,'180');        %Square pulse, width 1, height 1, label '180
RFline = ps_line(RFline, 6);                    %Flat line for 6

%Make the line showing the signal
Sigline = ps_initline('Signal', 2);             %Initialise at position 2
Sigline = ps_line(Sigline, 1);                  %flat line for 1
Sigline = ps_fid(Sigline, 3, 1, 7, 1.5);        %FID, width 3, height 1, freq 7, decay 1.5
Sigline = ps_line(Sigline, 1);                  %flat line for 1
Sigline = ps_echo(Sigline, 6, 0.7, 7, 1.5);     %Echo, width 6, height 0.7, freq7, decay 1.5

%Add some annotations showing TE/2
TEline = ps_initline(' ', 1.5, 1);              %Initialise annotation at position 1.5
TEline = ps_annotate(TEline, 1, 4.5, 'TE/2');   %Doublearrow between 1 and 4.5 with annotaton TE/2
TEline = ps_annotate(TEline, 4.5, 8, 'TE/2');   %Doublearrow between 4.5 and 8 with annotation TE/2

ps_plot(RFline, Sigline, TEline)                %Plot the thing
