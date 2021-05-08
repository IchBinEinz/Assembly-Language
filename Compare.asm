.MODEL SMALL 
.CODE
ORG 100H

TData : 	JMP Proses
		BilA db 67
		BilB db 68
		Kal0 db 'Bilangan A lebih kecil dari bilangan B $'
		Kal1  db 'Bilangan A sama dengan bilangan B $'
		Kal2 db 'Bilangan A lebih besar dari bilangan B $'
Proses :	MOV AL,BilA
		CMP AL,BilB
		JB AKecil
		JE Sama
		JA ABesar
AKecil :	LEA DX,Kal0
		JMP Cetak
Sama :		LEA DX,Kal1
		JMP Cetak
ABesar :	LEA DX,Kal2
Cetak :		MOV AH,09
		INT 21h
EXIT :		INT 20h

END TData
