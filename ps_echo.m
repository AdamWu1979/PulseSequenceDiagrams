function line_out = ps_echo(line_in, width, height, freq, decay, label)
%Echo shape
%
%INPUT:
%   line_in     - input line
%   width       - width of the echo
%   height      - height of the echo
%   freq        - frequncy of the cos component of the echo
%   decay       - decay constant of the echo
%   label       - label to add to echo (this will add to end of echo)


line_out = line_in;

halfrange = linspace(0, 5, width*100 / 2);
halfshape = cos(freq*halfrange) .* exp(-decay * halfrange);

echoshape = [fliplr(halfshape), halfshape];
echoshape = height/max(echoshape) * echoshape;

line_out.line = [line_in.line, echoshape];
line_out.length = line_in.length + width*100;
if nargin == 6
    line_out.annotate = [line_out.annotate, {[line_out.length/100, line_out.length/100];label;'none'}];
else
    line_out.annotate = [line_out.annotate, {[0,0];' ';'NA'}];
end