# Meus scripts customizados
---

## Gera PS1 customizado
> http://ezprompt.net/

## Atom

### Export
apm list --installed --bare > atom_packs.txt

### Import
apm install --packages-file atom_packs.txt

---
## Terminator

Atalho | Descrição |
:---:|:---:
CTRL+ALT+t | Chama o terminal
CTRL+SHIFT+O | Clicando com o botão direito do mouse e selecionando a opção: Dividir Horizontalmente.
CTRL+SHIFT+E | Clicando com o botão direito do mouse e selecionando a opção: Dividir certical.
CTRL+SHIFT+N ou CTRL+TAB | Para avançar entre os terminais
CTRL+SHIFT+P ou CTRL+SHIFT+TAB | Para retornar
CTRL+SHIFT+Z | É possível ainda, destacar o terminal selecionado, dando Zoom
CTRL+SHIFT+X | Podemos ainda destacar sem Zoom
SUPER+G | Para isso, agrupamos todos os terminais com a combinação
SUPER+SHIFT+G | Desagrupar
CTRL+SHIFT+W | Para fechar um terminal
CTRL+SHIFT+Q | Para fechar todos os terminais
CTRL+SHIFT+F | Pesquisa na saída de um terminal

---

|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
| color-mode | octal    | hex     | bash  | description      | example (= in octal)         | NOTE                                 |
|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
|          0 | \033[0m  | \x1b[0m | \e[0m | reset any affect | echo -e "\033[0m"            | 0m equals to m                       |
|          1 | \033[1m  |         |       | light (= bright) | echo -e "\033[1m####\033[m"  | -                                    |
|          2 | \033[2m  |         |       | dark (= fade)    | echo -e "\033[2m####\033[m"  | -                                    |
|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
|  text-mode | ~        |         |       | ~                | ~                            | ~                                    |
|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
|          3 | \033[3m  |         |       | italic           | echo -e "\033[3m####\033[m"  |                                      |
|          4 | \033[4m  |         |       | underline        | echo -e "\033[4m####\033[m"  |                                      |
|          5 | \033[5m  |         |       | blink (slow)     | echo -e "\033[3m####\033[m"  |                                      |
|          6 | \033[6m  |         |       | blink (fast)     | ?                            | not wildly support                   |
|          7 | \003[7m  |         |       | reverse          | echo -e "\033[7m####\033[m"  | it affects the background/foreground |
|          8 | \033[8m  |         |       | hide             | echo -e "\033[8m####\033[m"  | it affects the background/foreground |
|          9 | \033[9m  |         |       | cross            | echo -e "\033[9m####\033[m"  |                                      |
|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
| foreground | ~        |         |       | ~                | ~                            | ~                                    |
|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
|         30 | \033[30m |         |       | black            | echo -e "\033[30m####\033[m" |                                      |
|         31 | \033[31m |         |       | red              | echo -e "\033[31m####\033[m" |                                      |
|         32 | \033[32m |         |       | green            | echo -e "\033[32m####\033[m" |                                      |
|         33 | \033[33m |         |       | yellow           | echo -e "\033[33m####\033[m" |                                      |
|         34 | \033[34m |         |       | blue             | echo -e "\033[34m####\033[m" |                                      |
|         35 | \033[35m |         |       | purple           | echo -e "\033[35m####\033[m" | real name: magenta = reddish-purple  |
|         36 | \033[36m |         |       | cyan             | echo -e "\033[36m####\033[m" |                                      |
|         37 | \033[37m |         |       | white            | echo -e "\033[37m####\033[m" |                                      |
|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
|         38 | 8/24     |                    This is for special use of 8-bit or 24-bit                                            |
|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
| background | ~        |         |       | ~                | ~                            | ~                                    |
|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
|         40 | \033[40m |         |       | black            | echo -e "\033[40m####\033[m" |                                      |
|         41 | \033[41m |         |       | red              | echo -e "\033[41m####\033[m" |                                      |
|         42 | \033[42m |         |       | green            | echo -e "\033[42m####\033[m" |                                      |
|         43 | \033[43m |         |       | yellow           | echo -e "\033[43m####\033[m" |                                      |
|         44 | \033[44m |         |       | blue             | echo -e "\033[44m####\033[m" |                                      |
|         45 | \033[45m |         |       | purple           | echo -e "\033[45m####\033[m" | real name: magenta = reddish-purple  |
|         46 | \033[46m |         |       | cyan             | echo -e "\033[46m####\033[m" |                                      |
|         47 | \033[47m |         |       | white            | echo -e "\033[47m####\033[m" |                                      |
|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
|         48 | 8/24     |                    This is for special use of 8-bit or 24-bit                                            |                                                                                       |
|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|


---

## Tilix terminal

> https://gnunn1.github.io/tilix-web/
