code_seg segment
assume cs : code_seg
ORG 100h
Start :	JMP Mulai
	kata1  db 'Selamat datang       ',13,10,'$'
	kata2 db 'masukan user : !',13,10,'$'
	pass db 'masukan pass : !',13,10,'$'	

Mulai :		mov ah,09h
		mov dx,offset kata2
		int 21h
		mov bx,15

user1  : mov ah,07h	
		int 21h
		mov kata1[bx],al
		inc bx
		jmp user2

user2  : mov ah,07h
		int 21h
		mov kata1[bx],al
		inc bx
		jmp user3

user3  : mov ah,07h
		int 21h
		mov kata1[bx],al
		inc bx
		jmp user4

user4  : mov ah,07h
		int 21h
		mov kata1[bx],al


passcek :	mov ah,09h
		mov dx,offset pass
		int 21h
	
		
Masuk :	mov ah,07h
		int 21h
		cmp al,'1'
		je Lewat1
		cmp al,'1'
		jne Masuk
Lewat1 :	mov ah,07h
		int 21h
		cmp al,'2'
		je Lewat2
		cmp al,'2'
		jne Masuk
Lewat2 :	mov ah,07h
		int 21h
		cmp al,'3'
		je Lewat3
		cmp al,'3'
		jne Masuk
Lewat3 :	mov ah,07h
		int 21h
		cmp al,'4'
		je Lewat4
		cmp al,'4'
		jne Masuk
Lewat4 :	mov ah,07h
		int 21h
		cmp al,'5'
		je Lewat5
		cmp al,'5'
		jne Masuk
Lewat5 :	mov ah,09h
		mov dx, offset kata1
		int 21h
		int 20h

code_seg ends
End Start
