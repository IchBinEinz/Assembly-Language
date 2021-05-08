code_seg segment
assume cs : code_seg
ORG 100h
Start :	JMP Mulai
	kata1  db 'Selamat Anda bisa mneggunakan komputer ini',13,10,'$'
	kata2 db 'Silakan masukkan kata kunci sekarang !',13,10,'$'
	kata3 db ' ',13,10,'$'
Mulai :		mov ah,09h
		mov dx,offset kata2
		int 21h
Masuk :		mov ah,07h
		int 21h
		cmp al,'t'
		MOV AH,02h	
		MOV DL,'t'	
		INT 21h		
		je Lewat1
		cmp al,'T'
		MOV AH,02h	
		MOV DL,'T'	
		INT 21h
		jne Masuk
Lewat1 :	mov ah,07h
		int 21h
		cmp al,'a'
		MOV AH,02h	
		MOV DL,'a'	
		INT 21h
		je Lewat2
		MOV AH,02h	
		MOV DL,'A'	
		INT 21h
		cmp al,'A'
		jne Masuk
Lewat2 :	mov ah,07h
		int 21h
		cmp al,'s'
		MOV AH,02h	
		MOV DL,'s'	
		INT 21h
		je Lewat3
		cmp al,'S'
		MOV AH,02h	
		MOV DL,'S'	
		INT 21h
		jne Masuk
Lewat3 :	mov ah,07h
		int 21h
		cmp al,'m'
		MOV AH,02h	
		MOV DL,'m'	
		INT 21h
		je Lewat4
		cmp al,'M'
		MOV AH,02h	
		MOV DL,'M'	
		INT 21h
		jne Masuk
Lewat4 :	mov ah,07h
		int 21h
		cmp al,'i'
		MOV AH,02h	
		MOV DL,'i'	
		INT 21h
		je Lewat5
		cmp al,'I'
		MOV AH,02h	
		MOV DL,'I'	
		INT 21h
		jne Masuk
Lewat5 :	mov ah,09h
		mov dx,offset kata3
		int 21h
		mov ah,09h
		mov dx,offset kata1
		int 21h
		int 20h

code_seg ends
End Start
