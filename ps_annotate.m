function line_out = ps_annotate(line_in, start, finish, txt, linetype)
%add an annotation
%
%   line_in     - input line to add to 
%   start       - Where to start the line
%   finish      - where to end the line
%   txt         - text to put above the line
%   linetype    - Type of the line
%                    -'doublearrow' - doube headed arrow 
%                    -'arrow'       - one headed arrow
%                    -'line'        - no arrows line
%                    -'none'        - no line, just text 
%
%
%   This function adds annotations to the pulse sequence diagram by drawing
%   a line between start and finish on the x-axis. The height along the
%   y-axis is defined by the line_in.posn which is set in ps_initline.

if nargin < 5
    linetype = 'doublearrow';
end


line_out = line_in;

if line_out.type == 0
    error('Annotation needs an annotate type line. Use ps_initline(~, ~, 1) to make an annotation line');
end

line_out.annotate = [line_out.annotate, {[start,finish];txt;linetype}];
