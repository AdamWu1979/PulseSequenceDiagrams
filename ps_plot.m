function ps_plot(varargin)
%Function to plot the pulse sequence diagram 
%
%INPUT:
%   varagin - should be a series of lines created with the other ps_
%   functions
%
%DESCRIPTION:
%   Takes in the lines and plots them into a pulse sequence diagram.




%Get number of inputs
nplots = nargin;

%Initialise figure
fig = figure();
hold on
set(gca, 'XTick', []);  %Stuff to remove axes
set(gca, 'YTick', []);
set(gca, 'XColor', 'w');
set(gca, 'YColor', 'w');
xlabel(' ');    %Set some fake labels to pad around graph
ylabel(' ');
title(' ');
set(gca, 'LooseInset', get(gca, 'TightInset') + [0.05, 0, 0, 0]); %Shrink plotting window to remove whitespace around outside
                                                                 
max_length = 0; %variable to store max length for setting xlimit

%Loop over inputs
for i = 1:nplots;
    line_i = varargin{i};   %extract the line 
    
    plot_type = line_i.type;        %Get line type
    if plot_type ~= 0               %If it;s an annotation skip it for now
        continue                    %Plot all the lines before annotations
    end
    
    plot_length = line_i.length;    %get line length and compare with max
    if plot_length > max_length
        max_length = plot_length;
    end
    

    plot_posn = line_i.posn;        %get rest of line data 
    plot_name = line_i.name;
    plot_line = line_i.line;
    plot_annotate = line_i.annotate;
    
    plot_height = - 2 * (plot_posn - 1); %figure out where the line should be plotte
    plot_line = plot_line + plot_height; %shift the line
    
    
    plot(plot_line, 'k', 'LineWidth', 3); %Plot the line and add label to left
    text(-10, plot_height, plot_name, 'FontSize', 24, 'HorizontalAlignment', 'right');
    
    %Check if there are any annotations to add to line (flip angles etc.)
    if isempty(plot_annotate)
        continue
    else
        %Loop over the annotations and add them in 
        for j = 1:size(plot_annotate, 2);
            type_j = cell2mat(plot_annotate(3,j)); %Get type of annotation and skip NA cases
            if strcmp(type_j, 'NA');
                continue
            else
                limits_j = plot_annotate{1,j};     %Otherwise add in the annotation
                text_j = plot_annotate{2,j};
                text(100*limits_j(1)+10, plot_height+1, text_j, 'FontSize', 24);
            end
        end
    end
end

xlim([0,max_length]); %Set the x limit


%Now loop over the inputs for any annotation
for i = 1:nplots
    line_i = varargin{i};           %Get the line, check its an annotation line
    plot_type = line_i.type;
    if plot_type == 0 
        continue
    end
    
    plot_posn = line_i.posn;            %Get other relevant info from line
    plot_annotate = line_i.annotate;
    plot_height = - 2 * (plot_posn - 1); 
    
    %Loop over the annotations
    for j = 1:size(plot_annotate,2);
        limits_j = plot_annotate{1,j}; %Extract annotation info
        text_j = plot_annotate{2,j};
        type_j = plot_annotate{3,j};
        if ~(strcmp(type_j, 'NA') || strcmp(type_j, 'none')) %If the annotation has a line or arrow
            [annotate_x, annotate_y] = ds2nfu(100*limits_j, [plot_height, plot_height]); %This function scales from data units to figure unit
            annotation(type_j,annotate_x, annotate_y, 'LineWidth', 1);
        end
        text(100*(limits_j(1) + limits_j(2))/2, plot_height+0.1, text_j, 'FontSize', 24, 'HorizontalAlignment', 'center'); %Add the text label
    end
    
end

