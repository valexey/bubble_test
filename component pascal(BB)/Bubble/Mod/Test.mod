MODULE BubbleTest;

IMPORT Kernel, Out:=StdLog;

CONST n = 40000;

	PROCEDURE DoIt*;
	VAR
		arr : ARRAY n OF INTEGER;
		time : LONGINT;
		i, j, tmp : INTEGER;
	BEGIN
		time := Kernel.Time();
		
		FOR i:=0 TO n-1 DO
			arr[i] := n-i;
		END;
		
		FOR i:=0 TO n-1 DO
			FOR j:=0 TO n-2-i DO
				tmp := arr[j];
				IF arr[j] > arr[j+1] THEN
					arr[j] := arr[j+1];
					arr[j+1] := tmp;
				END;
			END;
		END;
		Out.Real((Kernel.Time() - time)/1000)
	END DoIt;

BEGIN

END BubbleTest.

Compile with boundaries checks:
(!)DevCompiler.CompileThis BubbleTest

Compile without boundaries checks:
(!) DevCompiler.CompileThis BubbleTest!!

Run test:
(!) BubbleTest.DoIt
