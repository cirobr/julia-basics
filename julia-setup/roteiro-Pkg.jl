libraryName = "lib2"

using PkgTemplates
t=Template(user="cirobr", authors="Ciro B Rosa <ciro.rosa@alumni.usp.br>", 
           julia=v"1.6.5", dir="~/projects/dev")
t(libraryName)