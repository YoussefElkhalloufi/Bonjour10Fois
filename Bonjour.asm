INCLUDE Irvine32.inc
.data
message BYTE "Affichage de Bonjour 10 fois : ", 0
bonjour BYTE "Bonjour", 0
.code
main PROC
    mov edx, OFFSET message
    call writeString
    call crlf

    mov eax, 10         ; Initialiser le compteur de boucles à 10
    mov edx, OFFSET bonjour

boucle:                  ; Nom de label modifié pour éviter les conflits
    cmp eax, 0
    je sortir            ; Sauter à 'sortir' si eax atteint 0
    call writeString
    call crlf            ; Ajouter un saut de ligne après chaque affichage de "Bonjour"
    dec eax              ; Décrémenter eax pour atteindre 0
    jmp boucle           ; Retourner en haut de la boucle

sortir:
    ret
main ENDP
END main
