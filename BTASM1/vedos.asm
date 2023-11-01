.MODEL small
.CODE
 PUBLIC @VeDOS$qv
 @VeDOS$qv PROC 
		 mov ah,4ch
		 int 21h
		 ret
 @VeDOS$qv ENDP
 END