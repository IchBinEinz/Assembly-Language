.MODEL SMALL
.CODE
ORG 100h

Proses : 
	MOV AH,02h	; Nilai service
	MOV DL,'A'	; DL=Karakter 'A' atau DL=41h
	MOV CX,10h	; Banyaknya pengulangan yang akan

Ulang :
	INT 21h		; Cetak karakter !!
	INC DL		; Naikkan nilai DL sebanyak 1
	LOOP Ulang	; Lompat ke Ulang
	INT 20h		
END Proses
