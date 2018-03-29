Program ex2;
Uses Wincrt;
Type
   tab =  Array[1..20] Of Char;
Var
   t:  tab;
   i,n:  Integer;

Procedure saisie(Var n:Integer;Var t:tab);
Begin
   Repeat
      Writeln('donner la taille de tableau');
      Readln(n);
   Until n In [2..20];
   For i:=1 To n Do
      Begin
         Repeat
            Writeln('donner les lettres de t[',i,']');
            Readln (t[i]);
         Until t[i] In ['A','B','C'] ;
      End;
End;

Procedure permutation(Var a,b:Char);
Var
   c:  Char;
Begin
   c := a;
   a := b;
   b := c;
End;

Procedure tri(n:Integer;Var t:tab);
Var
   i:  Integer;
   per:  Boolean;
Begin
   Repeat
      per := False;
      For i:=1 To n-1 Do
         If t[i]>t[i+1]Then
            Begin
               permutation(t[i],t[i+1]);
               per := True;
            End;
   Until per=False;
   n := n-1;
End;

Procedure affiche(n:Integer;t:tab);
Var
   i:  Integer;
Begin
   For i:=1 To n Do
      Writeln(t[i],'|');
End;
Begin
   saisie(n,t);
   tri(n,t);
   affiche(n,t);
End.