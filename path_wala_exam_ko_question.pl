edge(a,1).
edge(a,3).
edge(1,2).
edge(1,4).
edge(3,4).
edge(2,5).
edge(4,5).

route(V1,V2):-

    edge(V1,V2),
     write(V1),
     write('->'),
     write(V2).

route(V1,V2):-
    edge(V1,Commonvertex1),
    edge(Commonvertex1,Commonvertex2),
    edge(Commonvertex2,V2),
     write(V1),
     write('->'),
     write(Commonvertex1),

      write('->'),
     write(Commonvertex2),
     write('->'),
     write(V2).



