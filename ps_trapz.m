function line_out = ps_trapz(line_in, width, height, risewidth, height_ends, label)
%
%INPUT: 
%   line_in     - input line 
%   width       - width of the square pulse
%   height      - height of the square pulse
%   risewidth   - width of the rising part of trapezoid
%   height_ends - pair of values giving the height of the two ends of the
%                 pulse
%   label       - label to add to square pulse
%

if nargin < 5
    height_ends = [0,0];
end


line_out = line_in;

squareshape =  height * ones(1, round((width-2*risewidth)*100));
riseshape = linspace(height_ends(1), height, risewidth*100);
fallshape = linspace(height, height_ends(2), risewidth*100);

line_out.line = [line_in.line, riseshape, squareshape, fallshape];

line_out.length = line_in.length + width*100;

if nargin == 6
    line_out.annotate = [line_out.annotate, {[line_out.length/100, line_out.length/100];label;'none'}];
else
    line_out.annotate = [line_out.annotate, {[0,0];' ';'NA'}];
end