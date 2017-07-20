function line_out = ps_sinc(line_in, width, height, n_lobes, label)
%Sinc pulse
%
%INPUT:
%   line_in     - input line
%   width       - width of the pulse in x
%   height      - height of the pulse in y
%   n_lobes     - no. of lobes for the sinc
%   label       - label to add to pulse

line_out = line_in;

sincrange = linspace(-(n_lobes+1)/2, (n_lobes+1)/2, width * 100 );
sincpulse = sin(pi* sincrange)./(pi*sincrange);

sincpulse = height/max(sincpulse) * sincpulse;

line_out.line = [line_in.line, sincpulse];
line_out.length = line_in.length + width*100;
if nargin == 5
    line_out.annotate = [line_out.annotate, {[line_out.length/100, line_out.length/100];label;'none'}];
else
    line_out.annotate = [line_out.annotate, {[0,0];' ';'NA'}];
end