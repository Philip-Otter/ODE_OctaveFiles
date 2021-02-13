% Label adder
% Philip Otter
% Last edited 02/03/2021


function addlabels( xaxis, yaxis, titl)
  xlabel(xaxis)
  ylabel(yaxis)
  title(titl)
  legend()  % Need to find a way to remove direction field from being included
  hold on
endfunction
