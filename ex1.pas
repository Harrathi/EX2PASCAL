 Program ex1;
Uses Wincrt;
Type
   tab =  Array[1..30] Of Char;
Var
   t1,t2:  tab;
   i,n:  Integer;

Procedure saisie(Var n:Integer;Var t1:tab);
Begin
   Repeat
      Writeln('donner la taille de tableau');
      Readln(n);
   Until n In [2..30];
   For i:=1 To n Do
      Begin
         Repeat
            Writeln('donner les lettres de t1[',i,']');
            Readln (t1[i]);
         Until t1[i] In['A'..'Z'] ;
      End;
End;

Procedure tri(n:Integer;Var t1,t2:tab);
Var
   i,j:  Integer;
   per:  Boolean;
Begin
   Repeat
      per := False;
      For i:=1 To n Do
         For j:=i+1 To n Do
            If t1[i]<t1[j]Then
               Begin
                  t2[i] := t1[i];
                  t1[j] := 'a';
                  per := True;
               End;
   Until per=False;
End;

Procedure affiche(n:Integer;t1,t2:tab);
Var
   i:  Integer;
Begin
   For i:=1 To n Do
      Writeln(t1[i],'|');
   Writeln;
   Writeln(t2[i],'|');
End;
Begin
   saisie(n,t1);
   tri(n,t1,t2);
   affiche(n,t1,t2);
End.