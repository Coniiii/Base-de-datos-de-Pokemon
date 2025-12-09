CREATE TABLE Ciudad(
Codigo_ciudad int NOT NULL,
Nombre_ciudad varchar (30) NOT NULL,
ubicacion varchar(50)  NOT NULL,
primary key(Codigo_ciudad));

INSERT INTO  Ciudad (Codigo_ciudad ,Nombre_ciudad, ubicacion ) VALUES
(1, 'Ciudad Verde ', 'Kanto ' ),
(2, 'Ciudad Fucsia ', 'Kanto ' ),
(3, 'Ciudad Azafrán ', 'Kanto ' ),
(4, 'Ciudad Azulona ', 'Kanto ' ),
(5, 'Ciudad Carmín ', 'Kanto ' ),
(6, 'Ciudad Celeste ', 'Kanto ' ),
(7, 'Ciudad Plateada ', 'Kanto ' ),
(8, 'Isla Canela ', 'Kanto ' ),
(9, 'Pueblo Lavanda ', 'Kanto ' ),
(10, 'Pueblo Paleta ', 'Kanto ' ),
(11, 'Cueva Celeste ', 'Kanto ' ),
(12, 'Isla Secunda ', 'Kanto ' ),
(13, 'Isla Prima ', 'Kanto ' ),
(14, 'Isla Tera ', 'Kanto ' ),
(15, 'Ciudad Cerezo ', 'Johto ' ),
(16, 'Ciudad Purpura ', 'Johto ' ),
(17, 'Isla Espuma ', 'Johto ' ),
(18, 'Ciudad Orquidea ', 'Johto ' ),
(19, 'Isla Inta ', 'Johto ' ),
(20, 'Isla Utem ', 'Ñuñoa ' );

Select * from Ciudad

--Tabla 2

CREATE TABLE Gimnasio(
Codigo_ciudadd int NOT NULL,
Codigo_gim  int NOT NULL,
Nombre_gim varchar (30) NOT NULL,
Tipo_gim  varchar (30) NOT NULL,
Nombre_lid varchar (30) NOT NULL,
Nombre_medalla varchar (30) NOT NULL,
primary key(Codigo_gim),
FOREIGN KEY (Codigo_ciudadd) REFERENCES Ciudad(Codigo_ciudad));

INSERT INTO Gimnasio (Codigo_ciudadd,Codigo_gim, Nombre_gim,Tipo_gim,Nombre_lid,Nombre_medalla) VALUES
(1,1, 'Gimnasio de Verde ', 'Roca ', 'Brock ', 'Roca '),
(3,2, 'Gimnasio de Azafrán ', 'Planta ', 'Erika ', 'Arco iris '),
(2,3, 'Gimnasio de Ciudad Fucsia ', 'Veneno ', 'Koga ', 'Alma '),
(4,4, 'Gimnasio de Azulona ', 'Psíquico ', 'Sabrina ', 'Marsh '),
(6,5, 'Gimnasio de Celeste ', 'Eléctrico ', 'Lt. Surge ', 'Trueno '),
(8,6, 'Gimnasio de Isla Canela ', 'Fuego ', 'Blaine ', 'Volcán '),
(10,7, 'Gimnasio Pueblo Paleta ', 'Planta ', 'Julia ', 'Arco iris '),
(20,8, 'Gimnasio Isla Utem ', 'Veneno ', 'Pedra ', 'Alma '),
(5,9, 'Gimnasio de Carmín ', 'Veneno ', 'Koga ', 'Alma '),
(7,10, 'Gimnasio de Plateada ', 'Agua ', 'Misty ', 'Cascada '),
(9,11, 'Gimnasio Pueblo Lavanda ', 'Roca ', 'Nanca ', 'Roca '),
(11,12, 'Gimnasio Cueva Celeste ', 'Planta ', 'Samuel ', 'Arco iris '),
(14,13, 'Gimnasio Isla Tera ', 'Veneno ', 'Javiera ', 'Alma '),
(15,14, 'Gimnasio Ciudad Cerezo ', 'Veneno ', 'Luna ', 'Alma '),
(17,15, 'Gimnasio Isla Espuma ', 'Eléctrico ', 'Mitzu ', 'Trueno '),
(19,16, 'Gimnasio Isla Inta ', 'Fuego ', 'Nicole ', 'Volcán '),
(13,17, 'Gimnasio Isla Prima ', 'Planta ', 'Doki ', 'Arco iris '),
(12,18, 'Gimnasio Isla Secunda ', 'Veneno ', 'Mickey ', 'Alma '),
(16,19, 'Gimnasio Ciudad Purpura ', 'Veneno ', 'Roberto ', 'Alma '),
(18,20, 'Gimnasio Ciudad Orquidea ', 'Agua ', 'Minnie ', 'Cascada ');


Select * from Gimnasio


--Tabla 3

CREATE TABLE Centro_pokemon(
Cod_centro int NOT NULL,
Nombre_enfermera varchar (30) NOT NULL,
Rut_enfermera varchar (50) NOT NULL,
Cod_ciudad2 int NOT NULL,
primary key(Cod_centro),
FOREIGN KEY (Cod_ciudad2) REFERENCES Ciudad(Codigo_ciudad));

INSERT INTO  Centro_pokemon (Cod_centro, Nombre_enfermera, Rut_enfermera, Cod_ciudad2) VALUES
(11, 'Joy 1 ', '1.111.111-1 ', 1),
(22, 'Joy 2 ', '2.222.222-2 ', 2),
(33, 'Joy 3 ', '3.333.333-3 ', 3),
(44, 'Joy 4 ', '4.444.444-4 ', 4),
(55, 'Joy 5 ', '5.555.555-5 ', 5),
(66, 'Joy 6 ', '6.666.666-6 ', 6),
(77, 'Joy 7 ', '7.777.777-7 ', 7),
(88, 'Joy 8 ', '8.888.888-8 ', 8),
(99, 'Joy 9 ', '9.999.999-9 ', 9),
(110, 'Joy 10 ', '10.111.111-1 ', 10),
(121, 'Joy 11 ', '1.111.111-2 ', 11),
(132, 'Joy 12 ', '2.222.222-3 ', 12),
(143, 'Joy 13 ', '3.333.333-4 ', 13),
(154, 'Joy 14 ', '4.444.444-5 ', 14),
(165, 'Joy 15 ', '5.555.555-6 ', 15),
(176, 'Joy 16 ', '6.666.666-7 ', 16),
(187, 'Joy 17 ', '7.777.777-8 ', 17),
(198, 'Joy 18 ', '8.888.888-9 ', 18),
(209, 'Joy 19 ', '9.999.999-0 ', 19),
(220, 'Joy 20 ', '10.111.111-2 ', 20);


Select * from Centro_pokemon

--Tabla 4

CREATE TABLE Pokemon(
Cod_centro2 int NOT NULL,
Codigo_pokemon int NOT NULL,
Nombre_pokemon varchar (30) NOT NULL,
Tipo_primario varchar (30) NOT NULL,
Tipo_secundario varchar (30),
HP int NOT NULL,
Ataque int NOT NULL,
Defensa int NOT NULL,
Tipo_ataque	varchar (30) NOT NULL,
primary key(Codigo_pokemon),
FOREIGN KEY (Cod_centro2) REFERENCES Centro_pokemon(Cod_centro));

INSERT INTO Pokemon (Cod_centro2 ,Codigo_pokemon, Nombre_pokemon,Tipo_primario,Tipo_secundario,HP ,Ataque , Defensa, Tipo_ataque ) VALUES
(11,1, 'Bulbasaur ', 'Planta ', 'Veneno ',  10,50,42, 'Bomba lodo'),
(22,2, 'Ivysaur ', 'Planta ', 'Veneno ',  20,100,46, 'Ácido'),
(33,3, 'Venusaur ', 'Planta ', 'Veneno ',  30,150,50, 'Ácido'),
(44,4, 'Charmander ', 'Fuego ', 'NULL ',  40,200,54, 'Giro fuego'),
(55,5, 'Charmeleon ', 'Fuego ', 'NULL ',  50,250,58, 'Rueda fuego'),
(66,6, 'Charizard ', 'Fuego ', 'Volador ',  60,300,62, 'Lanzallamas'),
(77,7, 'Squirtle ', 'Agua ', 'NULL ',  70,350,66, 'Hidrochorro'),
(88,8, 'Wartortle ', 'Agua ', 'NULL ',  80,400,70, 'Hidrocañón'),
(99,9, 'Blastoise ', 'Agua ', 'NULL ',  90,450,74, 'Hidrocañón'),
(110,10, 'Caterpie ', 'Bicho ', 'NULL ',  100,500,78, 'Picadura'),
(121,11, 'Metapod ', 'Bicho ', 'NULL ',  110,550,82, 'Esporas'),
(132,12, 'Butterfree ', 'Bicho ', 'Volador ',  120,600,86, 'Picadura'),
(143,13, 'Weedle ', 'Bicho ', 'Veneno ',  130,650,90, 'Esporas'),
(154,14, 'Kakuna ', 'Bicho ', 'Veneno ',  140,700,94, 'Picadura'),
(165,15, 'Beedrill ', 'Bicho ', 'Veneno ',  150,750,98, 'Esporas'),
(176,16, 'Pidgey ', 'Normal ', 'Volador ',  160,800,102, 'Placaje'),
(187,17, 'Pidgeotto ', 'Normal ', 'Volador ',  170,850,106, 'Gruñido'),
(198,18, 'Pidgeot ', 'Normal ', 'Volador ',  180,900,110, 'Corte'),
(209,19, 'Rattata ', 'Normal ', 'NULL ',  190,950,114, 'Placaje'),
(220,20, 'Raticate ', 'Normal ', 'NULL ',  200,1000,118, 'Gruñido'),
(11,21, 'Spearow ', 'Normal ', 'Volador ',  210,1050,122, 'Corte'),
(22,22, 'Fearow ', 'Normal ', 'Volador ',  220,1100,126, 'Placaje'),
(33,23, 'Ekans ', 'Veneno ', 'NULL ',  230,1150,130, 'Bomba lodo'),
(44,24, 'Arbok ', 'Veneno ', 'NULL ',  240,1200,134, 'Ácido'),
(55,25, 'Pikachu ', 'Eléctrico ', 'NULL ',  250,1250,138, 'Impactrueno'),
(66,26, 'Raichu ', 'Eléctrico ', 'NULL ',  260,1300,142, 'Rayo'),
(77,27, 'Sandshrew ', 'Tierra ', 'NULL ',  270,1350,146, 'Terremoto'),
(88,28, 'Sandslash ', 'Tierra ', 'NULL ',  280,1400,150, 'Fisura'),
(99,29, 'Nidoran♀ ', 'Veneno ', 'NULL ',  290,1450,154, 'Bomba lodo'),
(110,30, 'Nidorina ', 'Veneno ', 'NULL ',  300,1500,158, 'Ácido'),
(121,31, 'Nidoqueen ', 'Veneno ', 'Tierra ',  310,1550,162, 'Bomba lodo'),
(132,32, 'Nidoran♂ ', 'Veneno ', 'NULL ',  320,1600,166, 'Ácido'),
(143,33, 'Nidorino ', 'Veneno ', 'NULL ',  330,1650,170, 'Bomba lodo'),
(154,34, 'Nidoking ', 'Veneno ', 'Tierra ',  340,1700,174, 'Ácido'),
(165,35, 'Clefairy ', 'Hada ', 'NULL ',  350,1750,178, 'Bomba lodo'),
(176,36, 'Clefable ', 'Hada ', 'NULL ',  360,1800,182, 'Ácido'),
(187,37, 'Vulpix ', 'Fuego ', 'NULL ',  370,1850,186, 'Ácido'),
(198,38, 'Ninetales ', 'Fuego ', 'NULL ',  380,1900,190, 'Giro fuego'),
(209,39, 'Jigglypuff ', 'Normal ', 'Hada ',  390,1950,194, 'Rueda fuego'),
(220,40, 'Wigglytuff ', 'Normal ', 'Hada ',  400,2000,198, 'Lanzallamas'),
(11,41, 'Zubat ', 'Veneno ', 'Volador ',  410,2050,202, 'Hidrochorro'),
(22,42, 'Golbat ', 'Veneno ', 'Volador ',  420,2100,206, 'Hidrocañón'),
(33,43, 'Oddish ', 'Planta ', 'Veneno ',  430,2150,210, 'Hidrocañón'),
(44,44, 'Gloom ', 'Planta ', 'Veneno ',  440,2200,214, 'Picadura'),
(55,45, 'Vileplume ', 'Planta ', 'Veneno ',  450,2250,218, 'Esporas'),
(66,46, 'Paras ', 'Bicho ', 'Planta ',  460,2300,222, 'Picadura'),
(77,47, 'Parasect ', 'Bicho ', 'Planta ',  470,2350,226, 'Esporas'),
(88,48, 'Venonat ', 'Bicho ', 'Veneno ',  480,2400,230, 'Picadura'),
(99,49, 'Venomoth ', 'Bicho ', 'Veneno ',  490,2450,234, 'Esporas'),
(110,50, 'Diglett ', 'Tierra ', 'NULL ',  500,2500,51, 'Placaje'),
(121,51, 'Dugtrio ', 'Tierra ', 'NULL ',  510,2550,53, 'Gruñido'),
(132,52, 'Meowth ', 'Normal ', 'NULL ',  520,2600,55, 'Corte'),
(143,53, 'Persian ', 'Normal ', 'NULL ',  530,2650,57, 'Placaje'),
(154,54, 'Psyduck ', 'Agua ', 'NULL ',  540,2700,59, 'Gruñido'),
(165,55, 'Golduck ', 'Agua ', 'NULL ',  550,2750,61, 'Corte'),
(176,56, 'Mankey ', 'Lucha ', 'NULL ',  560,2800,63, 'Placaje'),
(187,57, 'Primeape ', 'Lucha ', 'NULL ',  570,2850,65, 'Bomba lodo'),
(198,58, 'Growlithe ', 'Fuego ', 'NULL ',  580,2900,67, 'Ácido'),
(209,59, 'Arcanine ', 'Fuego ', 'NULL ',  590,2950,69, 'Impactrueno'),
(220,60, 'Poliwag ', 'Agua ', 'NULL ',  600,3000,71, 'Rayo'),
(11,61, 'Poliwhirl ', 'Agua ', 'NULL ',  610,3050,73, 'Terremoto'),
(22,62, 'Poliwrath ', 'Agua ', 'Lucha ',  620,3100,75, 'Fisura'),
(33,63, 'Abra ', 'Psíquico ', 'NULL ',  630,3150,77, 'Bomba lodo'),
(44,64, 'Kadabra ', 'Psíquico ', 'NULL ',  640,3200,79, 'Ácido'),
(55,65, 'Alakazam ', 'Psíquico ', 'NULL ',  650,3250,81, 'Bomba lodo'),
(66,66, 'Machop ', 'Lucha ', 'NULL ',  660,3300,83, 'Ácido'),
(77,67, 'Machoke ', 'Lucha ', 'NULL ',  670,3350,85, 'Bomba lodo'),
(88,68, 'Machamp ', 'Lucha ', 'NULL ',  680,3400,87, 'Ácido'),
(99,69, 'Bellsprout ', 'Planta ', 'Veneno ',  690,3450,89, 'Bomba lodo'),
(110,70, 'Weepinbell ', 'Planta ', 'Veneno ',  700,3500,91, 'Ácido'),
(121,71, 'Victreebel ', 'Planta ', 'Veneno ',  710,3550,93, 'Ácido'),
(132,72, 'Tentacool ', 'Agua ', 'Veneno ',  720,3600,95, 'Giro fuego'),
(143,73, 'Tentacruel ', 'Agua ', 'Veneno ',  730,3650,97, 'Rueda fuego'),
(154,74, 'Geodude ', 'Roca ', 'Tierra ',  740,3700,99, 'Lanzallamas'),
(165,75, 'Graveler ', 'Roca ', 'Tierra ',  750,3750,101, 'Hidrochorro'),
(176,76, 'Golem ', 'Roca ', 'Tierra ',  760,3800,103, 'Hidrocañón'),
(187,77, 'Ponyta ', 'Fuego ', 'NULL ',  770,3850,105, 'Hidrocañón'),
(198,78, 'Rapidash ', 'Fuego ', 'NULL ',  780,3900,107, 'Picadura'),
(209,79, 'Slowpoke ', 'Agua ', 'Psíquico ',  790,3950,109, 'Esporas'),
(220,80, 'Slowbro ', 'Agua ', 'Psíquico ',  800,4000,111, 'Picadura'),
(11,81, 'Magnemite ', 'Eléctrico ', 'Acero ',  810,4050,113, 'Esporas'),
(22,82, 'Magneton ', 'Eléctrico ', 'Acero ',  820,4100,115, 'Picadura'),
(33,83, 'Farfetch ', 'Normal ', 'Volador ',  830,4150,117, 'Esporas'),
(44,84, 'Doduo ', 'Normal ', 'Volador ',  840,4200,119, 'Placaje'),
(55,85, 'Dodrio ', 'Normal ', 'Volador ',  850,4250,121, 'Gruñido'),
(66,86, 'Seel ', 'Agua ', 'NULL ',  860,4300,123, 'Corte'),
(77,87, 'Dewgong ', 'Agua ', 'Hielo ',  870,4350,125, 'Placaje'),
(88,88, 'Grimer ', 'Veneno ', 'NULL ',  880,4400,127, 'Gruñido'),
(99,89, 'Muk ', 'Veneno ', 'NULL ',  890,4450,129, 'Corte'),
(110,90, 'Shellder ', 'Agua ', 'NULL ',  900,4500,131, 'Placaje'),
(121,91, 'Cloyster ', 'Agua ', 'Hielo ',  910,4550,133, 'Bomba lodo'),
(132,92, 'Gastly ', 'Fantasma ', 'Veneno ',  920,4600,135, 'Ácido'),
(143,93, 'Haunter ', 'Fantasma ', 'Veneno ',  930,4650,137, 'Impactrueno'),
(154,94, 'Gengar ', 'Fantasma ', 'Veneno ',  940,4700,139, 'Rayo'),
(165,95, 'Onix ', 'Roca ', 'Tierra ',  950,4750,141, 'Terremoto'),
(176,96, 'Drowzee ', 'Psíquico ', 'NULL ',  960,4800,143, 'Fisura'),
(187,97, 'Hypno ', 'Psíquico ', 'NULL ',  970,4850,145, 'Bomba lodo'),
(198,98, 'Krabby ', 'Agua ', 'NULL ',  980,4900,147, 'Ácido'),
(209,99, 'Kingler ', 'Agua ', 'NULL ',  990,4950,149, 'Bomba lodo'),
(220,100, 'Voltorb ', 'Eléctrico ', 'NULL ',  1000,5000,151, 'Ácido'),
(11,101, 'Electrode ', 'Eléctrico ', 'NULL ',  1010,5050,60, 'Bomba lodo'),
(22,102, 'Exeggcute ', 'Planta ', 'Psíquico ',  1020,5100,63, 'Ácido'),
(33,103, 'Exeggutor ', 'Planta ', 'Psíquico ',  1030,5150,66, 'Bomba lodo'),
(44,104, 'Cubone ', 'Tierra ', 'NULL ',  1040,5200,69, 'Ácido'),
(55,105, 'Marowak ', 'Tierra ', 'NULL ',  1050,5250,72, 'Ácido'),
(66,106, 'Hitmonlee ', 'Lucha ', 'NULL ',  1060,5300,75, 'Giro fuego'),
(77,107, 'Hitmonchan ', 'Lucha ', 'NULL ',  1070,5350,78, 'Rueda fuego'),
(88,108, 'Lickitung ', 'Normal ', 'NULL ',  1080,5400,81, 'Lanzallamas'),
(99,109, 'Koffing ', 'Veneno ', 'NULL ',  1090,5450,84, 'Hidrochorro'),
(110,110, 'Weezing ', 'Veneno ', 'NULL ',  1100,5500,87, 'Hidrocañón'),
(121,111, 'Rhyhorn ', 'Tierra ', 'NULL ',  1110,5550,90, 'Hidrocañón'),
(132,112, 'Rhydon ', 'Tierra ', 'NULL ',  1120,5600,93, 'Picadura'),
(143,113, 'Chansey ', 'Normal ', 'NULL ',  1130,5650,96, 'Esporas'),
(154,114, 'Tangela ', 'Planta ', 'NULL ',  1140,5700,99, 'Picadura'),
(165,115, 'Kangaskhan ', 'Normal ', 'NULL ',  1150,5750,102, 'Esporas'),
(176,116, 'Horsea ', 'Agua ', 'NULL ',  1160,5800,105, 'Picadura'),
(187,117, 'Seadra ', 'Agua ', 'NULL ',  1170,5850,108, 'Esporas'),
(198,118, 'Goldeen ', 'Agua ', 'NULL ',  1180,5900,111, 'Placaje'),
(209,119, 'Seaking ', 'Agua ', 'NULL ',  1190,5950,114, 'Gruñido'),
(220,120, 'Staryu ', 'Agua ', 'NULL ',  1200,6000,117, 'Corte'),
(11,121, 'Starmie ', 'Agua ', 'Psíquico ',  1210,6050,120, 'Placaje'),
(22,122, 'Mr ', 'Psíquico ', 'Hada ',  1220,6100,123, 'Gruñido'),
(33,123, 'Scyther ', 'Bicho ', 'Volador ',  1230,6150,126, 'Corte'),
(44,124, 'Jynx ', 'Hielo ', 'Psíquico ',  1240,6200,129, 'Placaje'),
(55,125, 'Electabuzz ', 'Eléctrico ', 'NULL ',  1250,6250,132, 'Bomba lodo'),
(66,126, 'Magmar ', 'Fuego ', 'NULL ',  1260,6300,135, 'Ácido'),
(77,127, 'Pinsir ', 'Bicho ', 'NULL ',  1270,6350,138, 'Impactrueno'),
(88,128, 'Tauros ', 'Normal ', 'NULL ',  1280,6400,141, 'Rayo'),
(99,129, 'Magikarp ', 'Agua ', 'NULL ',  1290,6450,144, 'Terremoto'),
(110,130, 'Gyarados ', 'Agua ', 'Volador ',  1300,6500,147, 'Fisura'),
(121,131, 'Lapras ', 'Agua ', 'Hielo ',  1310,6550,150, 'Bomba lodo'),
(132,132, 'Ditto ', 'Normal ', 'NULL ',  1320,6600,153, 'Ácido'),
(143,133, 'Eevee ', 'Normal ', 'NULL ',  1330,6650,156, 'Bomba lodo'),
(154,134, 'Vaporeon ', 'Agua ', 'NULL ',  1340,6700,159, 'Ácido'),
(165,135, 'Jolteon ', 'Eléctrico ', 'NULL ',  1350,6750,162, 'Bomba lodo'),
(176,136, 'Flareon ', 'Fuego ', 'NULL ',  1360,6800,165, 'Ácido'),
(187,137, 'Porygon ', 'Normal ', 'NULL ',  1370,6850,168, 'Bomba lodo'),
(198,138, 'Omanyte ', 'Roca ', 'Agua ',  1380,6900,171, 'Ácido'),
(209,139, 'Omastar ', 'Roca ', 'Agua ',  1390,6950,174, 'Ácido'),
(220,140, 'Kabuto ', 'Roca ', 'Agua ',  1400,7000,177, 'Giro fuego'),
(11,141, 'Kabutops ', 'Roca ', 'Agua ',  1410,7050,180, 'Rueda fuego'),
(22,142, 'Aerodactyl ', 'Roca ', 'Volador ',  1420,7100,183, 'Lanzallamas'),
(33,143, 'Snorlax ', 'Normal ', 'NULL ',  1430,7150,186, 'Hidrochorro'),
(44,144, 'Articuno ', 'Hielo ', 'Volador ',  1440,7200,189, 'Hidrocañón'),
(55,145, 'Zapdos ', 'Eléctrico ', 'Volador ',  1450,7250,192, 'Hidrocañón'),
(66,146, 'Moltres ', 'Fuego ', 'Volador ',  1460,7300,195, 'Picadura'),
(77,147, 'Dratini ', 'Dragón ', 'NULL ',  1470,7350,198, 'Esporas'),
(88,148, 'Dragonair ', 'Dragón ', 'NULL ',  1480,7400,201, 'Picadura'),
(99,149, 'Dragonite ', 'Dragón ', 'Volador ',  1490,7450,204, 'Esporas'),
(110,150, 'Mewtwo ', 'Psíquico ', 'NULL ',  1500,7500,207, 'Picadura'),
(121,151, 'Mew ', 'Psíquico ', 'NULL ',  1510,7550,210, 'Esporas ');


Select * from pokemon

--Tabla 5

Create Table Tienda(
Codigo_ciudad5 int NOT NULL,
Codigo_tienda  int NOT NULL,
Stock int NOT NULL,
Nombre varchar (30) NOT NULL,
tipo  varchar (30) NOT NULL,
primary key(Codigo_tienda),
FOREIGN KEY (Codigo_ciudad5) REFERENCES Ciudad(Codigo_ciudad));

INSERT INTO Tienda (Codigo_ciudad5 ,Codigo_tienda, Stock,Nombre,tipo) VALUES--comentado porque cada ciudad tiene una tienda entonces no se puede repetir
(1,1001,150, 'Poke ball ', 'Poke ball '),      --pero tambien dice 30 1:1
(2,1002,200, 'Super ball ', 'Poke ball '), 
(3,1003,250, 'Poción ', 'Soporte '), 
(4,1004,300, 'Superpoción ', 'Soporte '), 
(5,1005,350, 'Restaurar todo ', 'Soporte '), 
(6,1006,400, 'Antídoto ', 'Soporte '), 
(7,1007,450, 'Despertar ', 'Soporte '), 
(8,1008,500, 'Repelente ', 'Soporte '), 
(9,1009,550, 'Master ball ', 'Poke ball '), 
(10,1010,600, 'Honor ball ', 'Poke ball '), 
(11,1011,650, 'Revivir ', 'Soporte '), 
(12,1012,700, 'Buceo balll ', 'Poke ball '), 
(13,1013,750, 'Antiparalizador ', 'Soporte '), 
(14,1014,800, 'Despertar ', 'Soporte '), 
(15,1015,850, 'Sana ball ', 'Poke ball '), 
(16,1016,900, 'Antihielo ', 'Poke ball '), 
(17,1017,950, 'Luna ball ', 'Poke ball '), 
(18,1018,1000, 'Veloz ball ', 'Poke ball '), 
(19,1019,1050, 'Amor ball ', 'Poke ball '), 
(20,1020,1100, 'Acopio ball ', 'Poke ball ');
/*(6,1021,421, 'Antídoto ', 'Soporte '), 
(7,1022,481, 'Despertar ', 'Soporte '), 
(8,1023,541, 'Repelente ', 'Soporte '), 
(9,1024,601, 'Master ball ', 'Poke ball '), 
(10,1025,661, 'Honor ball ', 'Poke ball '), 
(11,1026,721, 'Revivir ', 'Soporte '), 
(12,1027,781, 'Buceo balll ', 'Poke ball '), 
(13,1028,841, 'Antiparalizador ', 'Soporte '), 
(14,1029,901, 'Despertar ', 'Soporte '), 
(15,1030,961, 'Sana ball ', 'Poke ball '), 
(16,1031,1021, 'Antihielo ', 'Soporte ');*/

Select * from Tienda


-- 1. Modificar datos de las tablas: 

ALTER TABLE Centro_pokemon ADD FOREIGN KEY(Cod_ciudad2)
REFERENCES Ciudad(Codigo_ciudad) ON UPDATE CASCADE 

ALTER TABLE Pokemon ADD FOREIGN KEY(Cod_centro2)
REFERENCES Centro_pokemon(Cod_centro) ON UPDATE CASCADE 

ALTER TABLE Gimnasio ADD FOREIGN KEY(Codigo_ciudadd)
REFERENCES Ciudad(Codigo_ciudad) ON UPDATE CASCADE 

ALTER TABLE Tienda ADD FOREIGN KEY(Codigo_ciudad5)
REFERENCES Ciudad(Codigo_ciudad) ON UPDATE CASCADE 


--1. TABLA 1 
UPDATE Ciudad
SET Nombre_ciudad = 'puente altooooooooo ',ubicacion = 'chile'
WHERE Codigo_ciudad = 2;
Select * from Ciudad

-- 1. TABLA 2
UPDATE Gimnasio
SET Nombre_gim = '',Tipo_gim = '', Nombre_lid = '', Nombre_medalla= ''
WHERE Codigo_gim = 1;

Select * from Gimnasio
-- 1.3 
UPDATE Centro_pokemon
SET Nombre_enfermera = '',Rut_enfermera = ''
WHERE Cod_centro = 11;

Select * from Centro_pokemon

--1.4
UPDATE Pokemon
SET Tipo_ataque= 'Ala dragon', Ataque=300
WHERE Codigo_pokemon = 149;
Select * from Pokemon

--1.5

UPDATE Tienda 
SET Stock = '',Nombre = '',tipo = ''
WHERE Codigo_tienda = 2;

Select * from Tienda 

--ELIMINAR DATOS DE LAS TABLAS 
ALTER TABLE Centro_pokemon ADD FOREIGN KEY(Cod_ciudad2)
REFERENCES Ciudad(Codigo_ciudad) ON DELETE CASCADE 

ALTER TABLE Pokemon ADD FOREIGN KEY(Cod_centro2)
REFERENCES Centro_pokemon(Cod_centro) ON DELETE CASCADE 

ALTER TABLE Gimnasio ADD FOREIGN KEY(Codigo_ciudadd)
REFERENCES Ciudad(Codigo_ciudad) ON DELETE CASCADE 

ALTER TABLE Tienda ADD FOREIGN KEY(Codigo_ciudad5)
REFERENCES Ciudad(Codigo_ciudad) ON DELETE CASCADE 



 -- 1 borrar ciudad
/*delete from Pokemon
where Cod_centro2= 44  and Codigo_pokemon= 1 and Nombre_pokemon = '' and   Nombre_pokemon = '' and Tipo_secundario  = '' and HP= 454 and  Ataque=45  and  Defensa= 4 and Tipo_ataque= ''
delete from Centro_pokemon
where Cod_centro= 44  and Nombre_enfermera= 'Joy 2' and Rut_enfermera = '2.222.222-2 ' and  Cod_ciudad2= 2 
delete from Gimnasio
where Codigo_ciudadd=2 AND Codigo_gim= 1  and  Nombre_gim = '' and Tipo_gim = '' and Nombre_lid= '' and Nombre_medalla = ''
delete from Tienda
where Codigo_tienda =1001  and Codigo_ciudad5= 2 and Stock=150 and Nombre ='Poke ball ' and tipo   = 'Poke ball '*/

delete from Ciudad
where Codigo_ciudad= 2--  and Nombre_ciudad = '' and ubicacion = ''


--2 
delete from Gimnasio
where Codigo_gim= 1  and  Nombre_gim = '' and Tipo_gim = '' and Nombre_lid= '' and Nombre_medalla = ''


--3 borrar centro
delete from Centro_pokemon
where Cod_centro= 66  and Nombre_enfermera= 'Joy 2' and Rut_enfermera = '2.222.222-2 ' and  Cod_ciudad2= 2 

--4 
delete from Pokemon
where Codigo_pokemon= 12121

--5
delete from Tienda
where Codigo_tienda =1001  and Codigo_ciudad5= 1  and Stock=150and Nombre ='Poke ball ' and tipo   = 'Poke ball '

Select * from Tienda 


--AGREGAR DATOS A LAS TABLAS 


-- 1 
INSERT INTO  Ciudad (Codigo_ciudad ,Nombre_ciudad, ubicacion ) VALUES
(1212121, 'Ciudad Verde ', 'Kanto ' );

--2 
INSERT INTO Gimnasio (Codigo_ciudadd,Codigo_gim, Nombre_gim,Tipo_gim,Nombre_lid,Nombre_medalla) VALUES
(1,1, 'Gimnasio de Verde ', 'Roca ', 'Brock ', 'Roca ');

--3 
INSERT INTO  Centro_pokemon (Cod_centro, Nombre_enfermera, Rut_enfermera, Cod_ciudad2) VALUES
(11, 'Joy 1 ', '1.111.111-1 ', 1);

--4 
INSERT INTO Pokemon (Cod_centro2 ,Codigo_pokemon, Nombre_pokemon,Tipo_primario,Tipo_secundario,HP ,Ataque , Defensa, Tipo_ataque ) VALUES
(11,12121, 'Sebastian ', 'Planta ', 'Veneno ',  10,50,42, 'Bomba lodo');

--5
INSERT INTO Tienda (Codigo_ciudad5 ,Codigo_tienda, Stock,Nombre,tipo) VALUES
(1,10021,15210, 'Pokeeeeeee ball ', 'Poke baaaaaaaaaall ');
