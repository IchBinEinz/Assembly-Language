code_seg segment
assume cs : code_seg
ORG 100h
Start :	JMP Mulai
	kata1  db 'Selamat datang       ',13,10,'$'
	kata2 db 'Masukkan jumlah counting ',13,10,'$'
	pass db 'Mulai hitung ',13,10,'$'
	spasi db ' ',13,10,'$'	
	credit db 'ERROR!',13,10,'$'
error : 	mov ah,09h
		mov dx,offset error
		int 21h
		int 20h

Mulai :		mov ah,09h
		mov dx,offset kata2
		int 21h
		mov ah,07h
		int 21h
		mov bl,48
		sub al,bl
		mov cl,al
		mov bl,'0'

Ulang :	        mov ah, 02h
		inc bl
		mov dl,bl
		int 21h
		mov ah,09h
		mov dx,offset spasi
		int 21h		
		loop Ulang

		int 20h

code_seg ends
End Start
