function line_out = ps_line(line_in, width);
%Append a flat line to diagram line line_in
%
%   line_in     - struct line input
%   width       - length of line to draw

line_out = line_in;
line_out.line = [line_in.line, zeros(1,round(width*100))];
line_out.length = line_in.length + width*100;
