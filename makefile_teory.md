## File name and executing

Specific names for makefile: makefile, Makefile and GNUmakefile. To execute this file: make COMMAND. If you want to use FILE_NAME.mk you need to write: make -f FILE_NAME.mk COMMAND. If you don't write COMMAND makefile execute first COMMAND in makefile.

## Varibles

To define varible neccery to write (NAME_OF_VARIBLE  = uppercase, VALUE can contain tab simbols):

```bash
NAME_OF_VARIBLE=VALUE
```

To use varible:

```bash
$(NAME_OF_VARIBLE)
```


## Commands

in bash:

```bash
make COMMAND_NAME
```

in Makefile **(important must have tab)**:

```bash
COMMAND_NAME: FILES_WITCH_MUST_EXIST
    code
```
 **FILES_WITCH_MUST_EXIST** neccery to write like this "file1.extention file2.extention ...". \
Or you can combine varibles with stings in name of make command or for names of **FILES_WITCH_MUST_EXIST**.

### Special simbols
if in code write ***\$@*** it will replace on "COMMAND_NAME". \
if you use ***\$^*** it will replace on ****FILES_WITCH_MUST_EXIST****. \
if use **\%** like this "COMMAND_NAME%" it will replace on simbol mean all possible simbols.\
if use **@** as first character before command like this: @COMMAND. This command doesn't write in console.

## Comment

For this in make file we must to write #

```bash
# Text of comment 
```

## Foreach



### Syntax

```bash
$(foreach VARIBLE_NAME,ITERATING_STRING,RESULT_OF_CYCLE)
```
**VARIBLE_NAME**: rules of definitions same as for common varibles\
**ITERATING_STRING**: split by tab simbols\
**RESULT_OF_CYCLE**: **VARIBLE_NAME** is same as for common varible

## Special words

### Wildcard

**Syntax**

```bash
$(wildcard REGULAR_EXPRESSION_STRING)
```

**Description**

find paths to files witch came up to regular expression. Return string where all results are written separated by spaces

### OS

**Syntax**

```bash
$(OS)
```

**Description**

return name of OS

### patsubst

**Syntax**

```bash
$(patsubst PATTERN_STRING,REPLACE_STRING,STRING)
```

**PATTERN_STRING** regular expression pattern string\
**REPLACE_STRING** PATTERN_STRING replace on this string\
**STRING** string where PATTERN_STRING will replace on REPLACE_STRING

**Description**

replace came up regular string on the other substring

### info

**Syntax**

```bash
$(info MESSAGE)
```

**Description**

print in console MESSAGE