% ODE direction_field
% Philip Otter
% Last edit 02/02/2021
% Future plans:  Pull dp equation from user/script generated file
%                Check a settings file to reduce number of parameters needed


function direction_fields(minx, miny, maxx, maxy, step, scale, arrow)
  % Generates the mesh grid
  [t,p] = meshgrid(minx:step:maxx, miny:step:maxy);
  % Defines the differential equation
  dt = ones(sizeof(t));
  dp = sqrt(1+sin(t)).*(1+p.^2);  % Change this every time! (for now)
  % Generates the angle of the differential equation
  angle = atan(dp);  % Octave defualts to radians
  xcomp = cos(angle);
  ycomp = sin(angle);
  fieldlines = quiver(t, p, xcomp, ycomp);
  set(fieldlines, 'Autoscale', 'on', 'AutoScaleFactor', scale, 'ShowArrowhead',
      arrow);
      axis([minx, maxx, miny, maxy], 'square');
      hold on;
endfunction