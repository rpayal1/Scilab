// 871 Rahul
// Question 6
L=6
lamda_o=0.5
function lamda=f(x)
 lamda=lamda_o*(x^2/L) // non uniform densitys
endfunction
//COM= integration(lamda*x dx)/integration(lamda dx)
com=integrate('f(x)*x','x',0,L)/integrate('f(x)','x',0,L)
disp(com,"Center of mass of the rod from the lighter end =")
