a=-1;
b=2;
n=10;   %deklarace promennych      fce na vytvoreni-toeplitoza ctvercova matice s konst prvky na diagonale, symetricka
A = toeplitz( [b a zeros(1,n-2)] , [b a zeros(1,n-2)] ) %v parametrech c je def vektor v=(b,a zbytku pozic je prirazena nula
                    %tato fce vezme dva vektory a vytvori toeplitzovu matici
d=det(A)            %volana fce pocita det
%e=eig(A)           %volana fce pocita vlastny cisla
[V,D] = eig(A)      %vypocitani vlastnich cisel V a vlastnich pravych vektoru
b1 = [1:1:10];      %vytvoreni vektoru o 10 cislech po jednom
R=rank(A)           %hodnost matice
x = A\b1.'          %reseni soustavy lin rovnic, Ax = b1x, b1 je tvoreno jako mat 1x10 -> transponovat