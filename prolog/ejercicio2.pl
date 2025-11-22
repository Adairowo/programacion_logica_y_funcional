
%   EJERCICIOS PROLOG


% 1. Comparar el área de un círculo

area_circulo(R, Area) :-
    Area is 3.1416 * R * R.

comparar_area_circulo(R, Valor) :-
    area_circulo(R, Area),
    ( Area > Valor ->
        write('El área es mayor que '), write(Valor)
    ; Area < Valor ->
        write('El área es menor que'), write(Valor)
    ;
        write('El área es igual a'), write(Valor)
    ).

% ejemplo
% ?- comparar_area_circulo(5, 80).



% 2. Comparar perimetro de un cuadrado


perimetro_cuadrado(L, P) :-
    P is 4 * L.

% ejemplo
% ?- perimetro_cuadrado(7, P).



% 3. Vverificar si un número es positivo, engativo o cero


signo(N) :-
    ( N > 0 ->
        write('Positivo')
    ; N < 0 ->
        write('Negativo')
    ;
        write('Cero')
    ).

% ejemplo:
% ?- signo(-3).



% 4. Comparar la raíz cuadrada con un valor


comparar_raiz(N, V) :-
    R is sqrt(N),
    ( R > V ->
        write('La raiz es mayor que '), write(V)
    ; R < V ->
        write('La raiz es menor que'), write(V)
    ;
        write('La raiz es igual a '), write(V)
    ).


% ?- comparar_raiz(25, 4).



% 5. calcular área de un triángulo y verificar si es mayor que 50


area_triangulo(B, H, A) :-
    A is (B * H) / 2.

area_mayor_50(B, H) :-
    area_triangulo(B, H, A),
    ( A > 50 ->
        write('El área es mayor que 50  ')
    ;
        write('El área NO es mayor que 50')
    ).


% ?- area_mayor_50(12, 10).


% 6. verificar si el número es par o impar


par_o_impar(N) :-
    ( 0 is N mod 2 ->
        write('Par')
    ;
        write('Impar')
    ).


% ?- par_o_impar(7).



% 7. comparar el logaritmo natural


comparar_ln(N, V) :-
    L is log(N),
    ( L > V ->
        write('El logaritmo es mayor que '), write(V)
    ; L < V ->
        write('El logaritmo es menor qu'), write(V)
    ;
        write('El logaritmo es igual a'), write(V)
    ).


% ?- comparar_ln(10, 2).



% 8. calcular potencia y verificar si supera 100


potencia_supera(A, B) :-
    P is A ** B,
    ( P > 100 ->
        write('La potencia supera 100 (valor = '), write(P), write(')')
    ;
        write('La potencia no supera 100 (valor = '), write(P), write(')')
    ).


% ?- potencia_supera(3, 5).

