code_seg segment
assume cs : code_seg
ORG 100h
Start :	JMP Mulai
	kata1  db 'Selamat Anda bisa mneggunakan komputer ini',13,10,'$'
	kata2 db 'Silakan masukkan kata kunci sekarang !',13,10,'$'
Mulai :		mov ah,09h
		mov dx,offset kata2
		int 21h
Masuk :	mov ah,07h
		int 21h
		cmp al,'t'
		je Lewat1
		cmp al,'T'
		jne Masuk
Lewat1 :	mov ah,07h
		int 21h
		cmp al,'a'
		je Lewat1
		cmp al,'A'
		jne Masuk
Lewat2 :	mov ah,07h
		int 21h
		cmp al,'s'
		je Lewat1
		cmp al,'S'
		jne Masuk
Lewat3 :	mov ah,07h
		int 21h
		cmp al,'m'
		je Lewat1
		cmp al,'M'
		jne Masuk
Lewat4 :	mov ah,07h
		int 21h
		cmp al,'i'
		je Lewat1
		cmp al,'I'
		jne Masuk
Lewat5 :	mov ah,09h
		mov dx,offset kata1
		int 21h
		int 20h

code_seg ends
End Start
