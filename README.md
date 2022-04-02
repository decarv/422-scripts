# scripts SO

Dois scripts .sh para ajudar a copiar arquivos entre a VM (só existe suporte para VirtualBox) rodando Minix 3.1.2a o host.

O script `mkiso.sh` cria um .iso a partir do diretório e carrega esse .iso para a VM. Deve ser executado no host, da seguinte forma

```bash 
$ ./mkiso.sh <diretório>
``` 

O script `rdiso.sh` lê o drive de DVD carregado na VM e cria um diretório de nome da data atual, formato `YYYYmmddHHMMSS`, com todos os arquivos do DVD. Deve ser executado no Minix, da seguinte forma

```bash
$ ./rdiso.sh
```

## Instalação

Depois de clonar o repositório, rodar no host: 

```bash
$ ./run.sh
```

para transferir o `rdiso.sh` para o Minix. Em seguida, rodar no Minix:

```bash
$ isoread /dev/c0d1 rdiso.sh > rdiso.sh
```

para receber no Minix o arquivo rdiso.sh.


## Testes

Teste simples, que não garante praticamente nada. Rodar no host:

```bash
$ ./mkiso.sh teste
```

E, então, rodar no Minix:

```bash
$ ./rdiso.sh
```

O diretório criado deve conter os mesmos arquivos que `/teste`.

## Autores

Henrique de Carvalho

### AVISO: LEIA O CÓDIGO! 

Algumas variáveis talvez precisem ser customizadas.

EU NÃO ME RESPONSABILIZO PELAS CAGADAS QUE VOCÊ FIZER. O CÓDIGO NÃO FAZ NADA SOZINHO. :)
