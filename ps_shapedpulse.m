function line_out = ps_shapedpulse(line_in, pulse, width, height, label);
%Plot a shaped pulse
%
%INPUT: 
%   line_in     - input line
%   pulse       - The pulse shape. This should be a real vector describing
%                 the pulse shape.
%   width       - width of the pulse
%   height      - Max height of pulse to be plotted
%   label       - label to add to the pulse


npoints_pulse = length(pulse);

plotpulse = pulse;
plotpulse = plotpulse/max(abs(plotpulse));

plotpulse = resample(plotpulse, width * 100, npoints_pulse, 0);

line_out = line_in;
line_out.line = [line_in.line, height*plotpulse];
line_out.length = line_in.length + width*100;
if nargin == 5
    line_out.annotate = [line_out.annotate, {[line_out.length/100, line_out.length/100];label;'none'}];
else
    line_out.annotate = [line_out.annotate, {[0,0];' ';'NA'}];
end