function line_out = ps_initline(name, posn, type)
%Initialise a line for pulse sequence diagram
%
%   name - name of line i.e RF, Gx, Gy ...
%   posn - position to plot it i.e. usually RF = 1, Gx = 2, Gy = 3 ...
%          increasing the value of posn will move a line DOWN the diagram
%   type - type of the line
%                 0 - line (default)
%                ~0 - annotation
%

if nargin == 2
    line_out.type = 0;
else
    line_out.type = 1;
end

line_out.name = name;
line_out.posn = posn;
line_out.line = [];
line_out.length = 0;
line_out.annotate = {};