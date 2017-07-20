function line_out = ps_empty(line_in, width);
%Add empty space to line
%
%INPUT: 
%   line_in     - input line
%   width       - width of the empty space
%
%This function was originally going to be used to implement annotations but
%I changed how I do that. I've left this function since theres nothing
%technically wrong with it, it just seems a bit useless now. 

line_out = line_in;

line_out.line = [line_in.line, NaN(1,width*100)];
line_out.length = line_in.length + width*100;