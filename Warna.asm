.MODEL SMALL
.CODE
ORG 100h
TData : JMP Proses
Kal0 DB 'Hallo '
Kal1 DB 'Calon Sarjana Komputer '
Proses:
MOV AX,1300h 	; Servis 13h subfungsi 00
MOV BL,10010011b 	; Atribut tulisan
MOV BH,00 		; Halaman tampilan 0
MOV DL,20 		; Posisi X
MOV DH,12 		; Posisi Y
MOV CX,6 		; Banyaknya karakter dalam string
LEA BP,Kal0 		; ES:BP alamat string
INT 10h		; Cetak kalimat !
MOV AX,1300h 	; Servis 13h subfungsi 00
MOV BL,10010011b 	; Atribut tulisan
MOV BH,00 		; Halaman tampilan 0
MOV DL,20 		; Posisi X
MOV DH,13 		; Posisi Y
MOV CX,23 		; Banyaknya karakter dalam string
LEA BP,Kal1 		; ES:BP alamat string
INT 10h		; Cetak kalimat !
INT 20h 		; Selesai, kembali ke DOS
END TData

