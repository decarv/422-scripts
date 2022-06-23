# scripts SO

Dois scripts para ajudar a copiar arquivos entre a VM (só existe suporte para VirtualBox) rodando Minix 3.1.0 ou 3.1.2a o host.

O script `mkiso` cria um .iso a partir do diretório e carrega esse .iso para a VM. Deve ser executado no host, da seguinte forma

```bash 
$ ./mkiso <diretório>
``` 

O script `rdiso` lê o drive de DVD carregado na VM e cria um diretório de nome da data atual, formato `YYYYmmddHHMMSS`, com todos os arquivos do DVD. Deve ser executado no Minix, da seguinte forma

```bash
$ ./rdiso
```

## Instalação

Depois de clonar o repositório, rodar no host: 

```bash
$ ./run
```

para transferir o `rdiso` para o Minix. Em seguida, rodar no Minix:

```bash
$ isoread /dev/c0d1 rdiso > rdiso
```

para receber no Minix o arquivo rdiso.


## Testes

Teste simples, que não garante praticamente nada. Rodar no host:

```bash
$ ./mkiso teste
```

E, então, rodar no Minix:

```bash
$ ./rdiso
```

O diretório criado deve conter os mesmos arquivos que `/teste`.

## Autores

Henrique de Carvalho

### AVISO: LEIA O CÓDIGO! 

Algumas variáveis talvez precisem ser customizadas.

EU NÃO ME RESPONSABILIZO PELAS CAGADAS QUE VOCÊ FIZER. O CÓDIGO NÃO FAZ NADA SOZINHO. :)
