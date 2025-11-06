
%   Ejercicio prolog 1

% jefe(Jefe, Empleado)

jefe(mark_zuckerberg, sheryl_sandberg).
jefe(sheryl_sandberg, david_wehner).
jefe(sheryl_sandberg, timothy_campos).
jefe(sheryl_sandberg, mike_schroepfer).
jefe(sheryl_sandberg, elliot_schrage).
jefe(sheryl_sandberg, lori_goler).
jefe(elliot_schrage, rebecca_van_dyck).
jefe(elliot_schrage, heather_freeland).



%             PREGUNTAS Y RESPUESTAS

% ¿Quién es el jefe de Rebecca?
% ?- jefe(J, rebecca_van_dyck).
% J = elliot_schrage.

% ¿Es jefe Mark del jefe de Rebecca?
% jefe de Rebecca = elliot_schrage.
% jefe de Elliot = sheryl_sandberg.
% jefe de Sheryl = mark_zuckerberg.
% Mark es jefe superior, no directo.
% Respuesta: No (no es jefe directo).

% ¿Es Lori jefe de alguien?
% ?- jefe(lori_goler, _).
% false. (No)

% Mostrar empleados del jefe de Heather
% jefe de Heather = elliot_schrage → empleados(elliot_schrage, L).
% L = [rebecca_van_dyck, heather_freeland].

% ¿Es Timothy jefe de Rebecca?
% ?- jefe(timothy_campos, rebecca_van_dyck).
% false. (No)

% Mostrar compañeros de nivel de Mike
% ?- companero(mike_schroepfer, X).
% X = david_wehner ;
% X = timothy_campos ;
% X = elliot_schrage ;
% X = lori_goler.

% ¿Es el jefe de Rebecca compañero de nivel de David?
% jefe de Rebecca = elliot_schrage, jefe de David = sheryl_sandberg.
% No tienen el mismo jefe.
% Respuesta: No.

% ¿Es compañero de nivel Mike de Lori?
% jefe de Mike = sheryl_sandberg, jefe de Lori = sheryl_sandberg.
% Respuesta: Sí.
