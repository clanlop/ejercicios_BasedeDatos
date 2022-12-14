Listar los nombres de los usuarios
SELECT nombre FROM Usuarios;
nombre
BRENDA
OSCAR
JOSE
LUIS
LUIS
DANIEL
JAQUELINE
ROMAN
BLAS
JESSICA
DIANA
RICARDO
VALENTINA
BRENDA
LUCIA
JUAN
ELPIDIO
JESSICA
LETICIA
LUIS
HUGO



Calcular el saldo máximo de los usuarios de sexo “Mujer”
SELECT MAX(saldo) FROM Usuarios WHERE sexo = 'M';

MAX(saldo)
500

Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
SELECT nombre, telefono FROM Usuarios WHERE marca IN('NOKIA', 'BLACKBERRY', 'SONY');

nombre	telefono
JOSE	655-143-3922
LUIS	655-100-8260
DANIEL	655-145-2586
JAQUELINE	655-330-5514
DIANA	655-143-3952
VALENTINA	655-137-4253
LUCIA	655-145-4992
JESSICA	655-330-5143
LETICIA	655-143-4019
LUIS	655-100-5085


Contar los usuarios sin saldo o inactivos
SELECT COUNT(*) FROM Usuarios WHERE NOT activo OR saldo <= 0;

COUNT(*)
7

Listar el login de los usuarios con nivel 1, 2 o 3
SELECT usuario FROM Usuarios WHERE nivel IN(1, 2, 3);
usuario
BRE2271
OSC4677
JOS7086
LUI7072
ROM6520
JES4752
DIA6570
RIC8283
BRE8106
LUC4982
ELP2984
JES9640
LET4015
LUI1076
HUG5441

Listar los números de teléfono con saldo menor o igual a 300
SELECT telefono FROM Usuarios WHERE saldo <= 300;
telefono
655-330-5736
655-143-4181
655-143-3922
655-137-1279
655-100-8260
655-145-2586
655-330-5514
655-330-3263
655-330-3871
655-143-3952
655-145-6049
655-137-4253
655-100-1351
655-145-4992
655-100-6517
655-330-5143
655-143-4019
655-100-5085

Calcular la suma de los saldos de los usuarios de la compañía telefónica NEXTEL
SELECT SUM(saldo) FROM Usuarios WHERE compania = 'NEXTEL';
SUM(saldo)
150

Contar el número de usuarios por compañía telefónica
SELECT compania, COUNT(*) FROM Usuarios GROUP BY compania;
compania	COUNT(*)
AT&T	      2
AXEL	      2
IUSACELL	  6
MOVISTAR	  2
NEXTEL	      1
TELCEL	      3
UNEFON	      5

Contar el número de usuarios por nivel
SELECT nivel, COUNT(*) FROM Usuarios GROUP BY nivel;
nivel	COUNT(*)
0	     6
1	     4
2	     5
3	     6

Listar el login de los usuarios con nivel 2
SELECT usuario FROM Usuarios WHERE nivel = 2;
usuario
BRE2271
ROM6520
RIC8283
LET4015
HUG5441

Mostrar el email de los usuarios que usan gmail
SELECT email FROM Usuarios WHERE email LIKE '%gmail.com';
email
oscar@gmail.com
francisco@gmail.com
roman@gmail.com
brenda2@gmail.com
lucia@gmail.com

Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA
SELECT nombre, telefono FROM Usuarios WHERE marca IN('LG', 'SAMSUNG', 'MOTOROLA');
nombre	telefono
BRENDA	655-330-5736
OSCAR	655-143-4181
LUIS	655-137-1279
ROMAN	655-330-3263
BLAS	655-330-3871
JESSICA	655-143-6861
RICARDO	655-145-6049
BRENDA	655-100-1351
JUAN	655-100-6517
ELPIDIO	655-145-9938
HUGO	655-137-3935

Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG
SELECT nombre, telefono FROM Usuarios WHERE marca NOT IN('LG', 'SAMSUNG');
nombre	telefono
JOSE	655-143-3922
LUIS	655-100-8260
DANIEL	655-145-2586
JAQUELINE	655-330-5514
DIANA	655-143-3952
RICARDO	655-145-6049
VALENTINA	655-137-4253
BRENDA	655-100-1351
LUCIA	655-145-4992
ELPIDIO	655-145-9938
JESSICA	655-330-5143
LETICIA	655-143-4019
LUIS	655-100-5085
HUGO	655-137-3935

Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL
SELECT usuario, telefono FROM Usuarios WHERE compania = 'IUSACELL';
usuario	telefono
BRE2271	655-330-5736
LUI7072	655-100-8260
ROM6520	655-330-3263
RIC8283	655-145-6049
LUC4982	655-145-4992
JES9640	655-330-5143

Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL
SELECT usuario, telefono FROM Usuarios WHERE compania <> "TELCEL";
usuario	telefono
BRE2271	655-330-5736
JOS7086	655-143-3922
LUI7072	655-100-8260
DAN2832	655-145-2586
JAQ5351	655-330-5514
ROM6520	655-330-3263
BLA9739	655-330-3871
DIA6570	655-143-3952
RIC8283	655-145-6049
VAL6882	655-137-4253
BRE8106	655-100-1351
LUC4982	655-145-4992
JUA2337	655-100-6517
ELP2984	655-145-9938
JES9640	655-330-5143
LET4015	655-143-4019
LUI1076	655-100-5085
HUG5441	655-137-3935

Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA
SELECT AVG(saldo) FROM Usuarios WHERE marca = 'NOKIA';
AVG(saldo)
100

Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o AXEL
SELECT usuario, telefono FROM Usuarios WHERE compania IN('IUSACELL', 'AXEL');
usuario	telefono
BRE2271	655-330-5736
LUI7072	655-100-8260
JAQ5351	655-330-5514
ROM6520	655-330-3263
RIC8283	655-145-6049
LUC4982	655-145-4992
JUA2337	655-100-6517
JES9640	655-330-5143

Mostrar el email de los usuarios que no usan yahoo
SELECT email FROM Usuarios WHERE email NOT LIKE '%yahoo.com';
email
brenda@live.com
oscar@gmail.com
francisco@gmail.com
enrique@outlook.com
luis@hotmail.com
daniel@outlook.com
jaqueline@outlook.com
roman@gmail.com
blas@hotmail.com
jessica@hotmail.com
diana@live.com
ricardo@hotmail.com
valentina@live.com
brenda2@gmail.com
lucia@gmail.com
juan@outlook.com
elpidio@outlook.com
jessica2@live.com
luis2@live.com
hugo@live.com

Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL o IUSACELL
SELECT usuario, telefono FROM Usuarios WHERE compania NOT IN('TELCEL', 'IUSACELL');
usuario	telefono
JOS7086	655-143-3922
DAN2832	655-145-2586
JAQ5351	655-330-5514
BLA9739	655-330-3871
DIA6570	655-143-3952
VAL6882	655-137-4253
BRE8106	655-100-1351
JUA2337	655-100-6517
ELP2984	655-145-9938
LET4015	655-143-4019
LUI1076	655-100-5085
HUG5441	655-137-3935

Listar el login y teléfono de los usuarios con compañía telefónica UNEFON
SELECT usuario, telefono FROM Usuarios WHERE compania = 'UNEFON';
usuario	telefono
DAN2832	655-145-2586
BLA9739	655-330-3871
DIA6570	655-143-3952
LET4015	655-143-4019
LUI1076	655-100-5085

Listar las diferentes marcas de celular en orden alfabético descendentemente
SELECT DISTINCT marca FROM Usuarios ORDER BY marca DESC;
marca
SONY
SAMSUNG
NOKIA
MOTOROLA
LG
BLACKBERRY

Listar las diferentes compañías en orden alfabético aleatorio
SELECT DISTINCT compania FROM Usuarios ORDER BY RAND();
compania
AT&T
TELCEL
UNEFON
AXEL
NEXTEL
MOVISTAR
IUSACELL

Listar el login de los usuarios con nivel 0 o 2
SELECT usuario FROM Usuarios WHERE nivel IN(0, 2);
usuario
BRE2271
LUI6115
DAN2832
JAQ5351
ROM6520
BLA9739
RIC8283
VAL6882
JUA2337
LET4015
HUG5441

Calcular el saldo promedio de los usuarios que tienen teléfono marca LG
SELECT AVG(saldo) FROM Usuarios WHERE marca = 'LG';
AVG(saldo)
50


Listar el login de los usuarios con nivel 1 o 3
SELECT usuario FROM Usuarios WHERE nivel IN(1, 3);
usuario
OSC4677
JOS7086
LUI7072
JES4752
DIA6570
BRE8106
LUC4982
ELP2984
JES9640
LUI1076

Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY
SELECT nombre, telefono FROM Usuarios WHERE marca <> "BLACKBERRY";
nombre	telefono
BRENDA	655-330-5736
OSCAR	655-143-4181
JOSE	655-143-3922
LUIS	655-137-1279
LUIS	655-100-8260
DANIEL	655-145-2586
ROMAN	655-330-3263
BLAS	655-330-3871
JESSICA	655-143-6861
DIANA	655-143-3952
RICARDO	655-145-6049
BRENDA	655-100-1351
JUAN	655-100-6517
ELPIDIO	655-145-9938
JESSICA	655-330-5143
LUIS	655-100-5085
HUGO	655-137-3935

Listar el login de los usuarios con nivel 3
SELECT usuario FROM Usuarios WHERE nivel = 3
usuario
OSC4677
JOS7086
BRE8106
LUC4982
JES9640
LUI1076

Listar el login de los usuarios con nivel 0
SELECT usuario FROM Usuarios WHERE nivel = 0;
usuario
LUI6115
DAN2832
JAQ5351
BLA9739
VAL6882
JUA2337

Listar el login de los usuarios con nivel 1
SELECT usuario FROM Usuarios WHERE nivel = 1;
usuario
LUI7072
JES4752
DIA6570
ELP2984

Contar el número de usuarios por sexo
SELECT sexo, COUNT(*) FROM Usuarios GROUP BY sexo;
sexo	COUNT(*)
H	     12
M	      9

Listar el login y teléfono de los usuarios con compañía telefónica AT&T
SELECT usuario, telefono FROM Usuarios WHERE compania = "AT&T";
usuario	telefono
VAL6882	655-137-4253
HUG5441	655-137-3935

Listar las diferentes compañías en orden alfabético descendentemente
SELECT DISTINCT compania FROM Usuarios ORDER BY compania DESC;
compania
UNEFON
TELCEL
NEXTEL
MOVISTAR
IUSACELL
AXEL
AT&T

Listar el login de los usuarios inactivos
SELECT usuario FROM Usuarios WHERE NOT activo;
usuario
LUI7072
DIA6570
VAL6882
JUA2337

Listar los números de teléfono sin saldo
SELECT telefono FROM Usuarios WHERE saldo <= 0;
telefono
655-143-4181
655-330-5514
655-145-4992
655-100-6517

Calcular el saldo mínimo de los usuarios de sexo “Hombre”
SELECT MIN(saldo) FROM Usuarios WHERE sexo = 'H';
MIN(saldo)
0

Listar los números de teléfono con saldo mayor a 300
SELECT telefono FROM Usuarios WHERE saldo > 300;
telefono
655-143-6861
655-145-9938
655-137-3935

Contar el número de usuarios por marca de teléfono
SELECT marca, COUNT(*) FROM Usuarios GROUP BY marca;
marca	     COUNT(*)
BLACKBERRY	   4
LG	           3
MOTOROLA	   4
NOKIA	       2
SAMSUNG	       4
SONY	       4


Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG
SELECT nombre, telefono FROM Usuarios WHERE marca <> "LG";
nombre	    telefono
BRENDA	    655-330-5736
JOSE	    655-143-3922
LUIS	    655-137-1279
LUIS	    655-100-8260
DANIEL	    655-145-2586
JAQUELINE	655-330-5514
JESSICA	    655-143-6861
DIANA	    655-143-3952
RICARDO	    655-145-6049
VALENTINA	655-137-4253
BRENDA	    655-100-1351
LUCIA	    655-145-4992
JUAN	    655-100-6517
ELPIDIO	    655-145-9938
JESSICA	    655-330-5143
LETICIA	    655-143-4019
LUIS	    655-100-5085
HUGO	    655-137-3935

Listar las diferentes compañías en orden alfabético ascendentemente
SELECT DISTINCT compania FROM Usuarios ORDER BY compania ASC;
compania
AT&T
AXEL
IUSACELL
MOVISTAR
NEXTEL
TELCEL
UNEFON

Calcular la suma de los saldos de los usuarios de la compañía telefónica UNEFON
SELECT SUM(saldo) FROM Usuarios WHERE compania = 'UNEFON';
SUM(saldo)
550

Mostrar el email de los usuarios que usan hotmail
SELECT email FROM Usuarios WHERE email LIKE "%hotmail.com";
email
luis@hotmail.com
blas@hotmail.com
jessica@hotmail.com
ricardo@hotmail.com

Listar los nombres de los usuarios sin saldo o inactivos
SELECT nombre FROM Usuarios WHERE NOT activo OR saldo <= 0;
nombre
OSCAR
LUIS
JAQUELINE
DIANA
VALENTINA
LUCIA
JUAN

Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o TELCEL
SELECT usuario, telefono FROM Usuarios WHERE compania IN('IUSACELL', 'TELCEL');
usuario	telefono
BRE2271	655-330-5736
OSC4677	655-143-4181
LUI6115	655-137-1279
LUI7072	655-100-8260
ROM6520	655-330-3263
JES4752	655-143-6861
RIC8283	655-145-6049
LUC4982	655-145-4992
JES9640	655-330-5143

Listar las diferentes marcas de celular en orden alfabético ascendentemente
SELECT DISTINCT marca FROM Usuarios ORDER BY marca DESC;
marca
SONY
SAMSUNG
NOKIA
MOTOROLA
LG
BLACKBERRY

Listar las diferentes marcas de celular en orden alfabético aleatorio
SELECT DISTINCT marca FROM Usuarios ORDER BY RAND();
MOTOROLA
BLACKBERRY
NOKIA
LG
SAMSUNG
SONY

Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o UNEFON
SELECT usuario, telefono FROM Usuarios WHERE compania IN('IUSACELL', 'UNEFON');
usuario	telefono
BRE2271	655-330-5736
LUI7072	655-100-8260
DAN2832	655-145-2586
ROM6520	655-330-3263
BLA9739	655-330-3871
DIA6570	655-143-3952
RIC8283	655-145-6049
LUC4982	655-145-4992
JES9640	655-330-5143
LET4015	655-143-4019
LUI1076	655-100-5085


Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA
SELECT nombre, telefono FROM Usuarios WHERE marca NOT IN('MOTOROLA', 'NOKIA');
nombre	   telefono
BRENDA	   655-330-5736
OSCAR	   655-143-4181
LUIS	   655-137-1279
DANIEL	   655-145-2586
JAQUELINE  655-330-5514
ROMAN	   655-330-3263
BLAS	   655-330-3871
JESSICA	   655-143-6861
DIANA	   655-143-3952
VALENTINA  655-137-4253
LUCIA	   655-145-4992
JUAN	   655-100-6517
JESSICA	   655-330-5143
LETICIA	   655-143-4019
LUIS	   655-100-5085


Calcular la suma de los saldos de los usuarios de la compañía telefónica TELCEL
SELECT SUM(saldo) FROM Usuarios WHERE compania = 'TELCEL';
SUM(saldo)
550