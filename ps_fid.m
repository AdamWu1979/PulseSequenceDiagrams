function line_out = ps_fid(line_in, width, height, freq, decay, label)
%Free induction decay 
%
%INPUT:
%   line_in     - input line
%   width       - width of the FID
%   height      - Initial height of the FID
%   freq        - frequency of the cos component
%   decay       - decay constant
%   label       - label to add to end of the decay
%
%

line_out = line_in;

fidrange = linspace(0, 5, width*100);
fidshape = cos(freq*fidrange) .* exp(-decay * fidrange);

fidshape = height/max(fidshape) * fidshape;

line_out.line = [line_in.line, fidshape];
line_out.length = line_in.length + width*100;
if nargin == 6
    line_out.annotate = [line_out.annotate, {[line_out.length/100, line_out.length/100];label;'none'}];
else
    line_out.annotate = [line_out.annotate, {[0,0];' ';'NA'}];
end