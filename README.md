# Decodificador de Mensagens na Linguagem do P

Este é um programa que decodifica mensagens codificadas na linguagem do P. O programa foi desenvolvido em assembly MIPS e pode ser utilizado para decodificar mensagens codificadas fornecidas pelo usuário.

## Pré-requisitos

Para executar o programa, você precisa ter o ambiente adequado configurado com o simulador do MIPS. Certifique-se de ter o ambiente de desenvolvimento MIPS instalado e configurado corretamente antes de prosseguir.

## Como utilizar

Siga as instruções abaixo para utilizar o programa:

1. Abra um editor de texto e crie um novo arquivo.
2. Copie o código fornecido e cole no arquivo criado.
3. Salve o arquivo com uma extensão `.asm`, por exemplo, `linguagemdoP.asm`.
4. Abra o simulador [Mars](http://courses.missouristate.edu/kenvollmar/mars/) no seu ambiente de desenvolvimento.
5. Carregue o arquivo `linguagemdoP.asm` no simulador.
6. Execute o programa.

O programa solicitará que você insira uma mensagem codificada. Digite a mensagem e pressione Enter.

Exemplo:
```bash
pVpapmpops papo pcpipnpepmpa
```
O programa decodificará a mensagem e imprimirá o resultado na tela.
```bash
Vamos ao cinema
```
## Funcionamento do programa

O programa segue os seguintes passos:

1. Lê a mensagem codificada do usuário.
2. Configura os ponteiros para a mensagem codificada e decodificada.
3. Inicia um loop para processar cada caractere da mensagem codificada.
4. Lê o próximo caractere da mensagem codificada.
5. Se o caractere for nulo, o programa encerra o loop e passa para o próximo passo.
6. Se o caractere não for 'p', copia o caractere para a mensagem decodificada e avança para o próximo caractere.
7. Se o caractere for 'p', lê o próximo caractere da mensagem codificada e avança para o próximo caractere.
8. Retorna ao início do loop para processar o próximo caractere.
9. Ao encontrar o caractere nulo (fim da mensagem), adiciona um caractere nulo ao final da mensagem decodificada.
10. Imprime a mensagem decodificada na tela.
11. Encerra o programa.
