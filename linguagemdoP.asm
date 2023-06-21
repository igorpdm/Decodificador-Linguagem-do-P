main:
    # Lê a mensagem codificada do usuário
    li $v0, 8
    la $a0, 0x10010000
    li $a1, 1000
    syscall

    # Configura os ponteiros para a mensagem codificada e decodificada
    la $t0, 0x10010000
    la $t1, 0x10011000

loop:
    # Lê o próximo caractere da mensagem codificada
    lb $t2, ($t0)
    # Se o caractere for nulo (fim da mensagem), sai do loop
    beqz $t2, end

    # Avança para o próximo caractere da mensagem codificada
    addi $t0, $t0, 1
    # Se o caractere não for 'p', pula para a próxima etapa
    bne $t2, 'p', not_p

    # Lê o próximo caractere da mensagem codificada
    lb $t2, ($t0)
    # Se o caractere for nulo (fim da mensagem), sai do loop
    beqz $t2, end

    # Avança para o próximo caractere da mensagem codificada
    addi $t0, $t0, 1

not_p:
    # Copia o caractere para a mensagem decodificada
    sb $t2, ($t1)
    # Avança para o próximo caractere da mensagem decodificada
    addi $t1, $t1, 1
    # Volta para o início do loop
    j loop

end:
    # Adiciona um caractere nulo ao final da mensagem decodificada
    sb $zero, ($t1)

    # Imprime a mensagem decodificada
    li $v0, 4
    la $a0, 0x10011000
    syscall

    # Encerra o programa
    li $v0, 10
    syscall
