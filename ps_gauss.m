function line_out = ps_gauss(line_in, width, height, sigma, label)
%Gauss pulse
%
%INPUT: 
%   line_in     - input line
%   width       - width of gauss along x
%   height      - heigh of gauss along y
%   sigma       - sigma of gauss
%


line_out = line_in;

gaussrange = linspace(-4, 4, width * 100);
gausspulse = 1/sqrt(2*pi*sigma^2) * exp( -0.5 * (gaussrange.^2)./sigma^2);

gausspulse = height/max(gausspulse) * gausspulse;

line_out.line = [line_in.line, gausspulse];
line_out.length = line_in.length + width*100;

if nargin == 5
    line_out.annotate = [line_out.annotate, {[line_out.length/100, line_out.length/100];label;'none'}];
else
    line_out.annotate = [line_out.annotate, {[0,0];' ';'NA'}];
end