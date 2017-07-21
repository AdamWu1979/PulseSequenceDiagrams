function line_out = ps_square(line_in, width, height, zero_ends, label);
%Square pulse
%
%INPUT: 
%   line_in  - input line 
%   width    - width of the square pulse
%   height   - height of the square pulse
%   zero_ends- flag to set ends of pulse to zero or not
%   label    - label to add to square pulse
%

if nargin < 4
    zero_ends = true;
end

line_out = line_in;

squareshape =  height * ones(1, width*100);
if zero_ends
    squareshape(1) = 0;
end

line_out.line = [line_in.line, squareshape];
if zero_ends
    line_out.line(end) = 0;
end

line_out.length = line_in.length + width*100;
if nargin == 5
    line_out.annotate = [line_out.annotate, {[line_out.length/100, line_out.length/100];label;'none'}];
else
    line_out.annotate = [line_out.annotate, {[0,0];' ';'NA'}];
end