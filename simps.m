
% Philip Otter
% Function that performs the Simpsons rule
% Needs the differential to be manually adjusted each time
% Future ideas:  Build a table if requested using check values.

clear all;


function simpsons( a, b, n)
  i = 0;
  endval = 0;  % Holds my approximated value for the integral
  flip = 0;  % Determines wether to multipy by 2 or 4
  s = (b-a) ./ n;  % Determines our step size
  disp('Check a, b , n, step'), disp(a), disp(b), disp(n), disp(s)
  while i <= n
    x = a + (s.*i);
    disp('Check i, xi'), disp(i), disp (x)
    func = sqrt(1+sin(x));  % Change me every time!
    disp('Check function value'), disp(func)
    if (i != 0 && i != n)
      if (flip == 1)
        endval = endval + 2 .* func;
        flip = 0;
      elseif (flip == 0)
        endval = endval + 4 .* func;
        flip = 1;
      endif
    else
      endval = endval + func;
    endif
    i++;
    disp('Check current simpson value'), disp(endval)
  endwhile
  endval = ((b-a) ./ n ./ 3) .* endval;
  endval = tan(endval + (pi ./ 4));  % Change me every time!
  disp ('Definite Integral Aproximation:'), disp (endval)
endfunction

simpsons( 0.5, 1.0, 4)
