function line_out = ps_square(line_in, width, height, label);
%Square pulse
%
%INPUT: 
%   line_in  - input line 
%   width    - width of the square pulse
%   height   - height of the square pulse
%   label    - label to add to square pulse
%

line_out = line_in;

squareshape =  height * ones(1, width*100);
squareshape(1) = 0;

line_out.line = [line_in.line, squareshape];
line_out.line(end) = 0;
line_out.length = line_in.length + width*100;
if nargin == 4
    line_out.annotate = [line_out.annotate, {[line_out.length/100, line_out.length/100];label;'none'}];
else
    line_out.annotate = [line_out.annotate, {[0,0];' ';'NA'}];
end