1;
% Philip Otter
% Ooda loop ? odduh loop? lol
clear all


%Change me to set starting positions
global apos = [0, 0]
global bpos = [1, 0]

  
% Handles movement of vessal A
function va(s, speed)
  xa = apos (0)
  ya = apos (1)
  xb = bpos (0)
  yb = bpos (1)
  slope = (yb - ya)./(xb-xa)
  theta = arctan(slope)
  apos(0) = speed*cos(theta)
  apos(1) = speed*sin(theta)
  plot(apos(0), apos(1), 'r')
  hold on
endfunction


% Handles movement of Vessal B
function vb(s, speed)
  bpos(1) = bpos(1) + speed
  plot(bpos(0), bpos(1), 'y')
  hold on
  
endfunction


% Checks whether my boats have colided
function check(t)
  if bpos == apos
    disp("!!COLLIDED!!"), disp(t);
  endif
endfunction


% Handles the bulk of the instructions
function pursuit(s, max,sa, sb)
  time = 0;
  %direction_fields(0., 0., max, max, s, 0.5,  "off")  % My pre-made field function
  %initial()
  while s <= max
    vb(s, sb)
    va(s, sa)
    check(time)
    time = time + s;
  endwhile  
endfunction


function initial
  plot(apos(1), apos(2), 'r')
  plot(bpos(1), bpos(2), 'y')
  hold on
 endfunction



pursuit(0.2, 1, 1, 2)
