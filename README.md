Pulse Sequence Diagrams

Matlab code for generating MR pulse sequence diagrams

This project contains a bunch of functions used to generate pulse sequence diagrams with functions for a few basic pulse shapes or capacity to take in any general pulse shape. The supplied spinecho.m sript shows a simple example of how to use the functions to generate a pulse sequence diagram. LASERsequence.m provides simple example of more complex sequence using shaped RF and gradients. 

The pulse sequence lines are stored in structs, initialised using the ps_initline function. Annotation lines (such as arrows spanning a section of the sequnce to label TE) are also initialised using ps_initline function, passing an argument to identify the line as an annotation line.

The ps_plot function takes in any number of line structs and plots them to generate the pulse sequence diagram. Pulse sequence elements usually have an input option for height and width. These are supplied in arbitrary units, with one plotting unit being split into 100 points for plotting so as to be able to capture shaped pulses. Shaped pulses should be supplied as a real 1xN vector in Matlab. The function resamples the pulse shape so as to rescale the pulse into the plotting units.

ds2nfu function is used to go between data units and figure units for the plotting of annotations. This function is taken from Michelle Hirsch's file exchange http://uk.mathworks.com/matlabcentral/fileexchange/10656-data-space-to-figure-units-conversion
