
   function addOpt(oCntrl, iPos, sTxt, sVal){
     var selOpcion=new Option(sTxt, sVal);
     eval(oCntrl.options[iPos]=selOpcion);
   }

   function cambia(oCntrl,param){  
    while (oCntrl.length) oCntrl.remove(0);
    switch (document.getElementById(param).edo.selectedIndex){

      case 1: //aguascalientes
      addOpt(oCntrl,  0, "Aguascalientes", "Aguascalientes");
      addOpt(oCntrl,  1, "Asientos", "Asientos");
      addOpt(oCntrl,  2, "Calvillo", "Calvillo");
      addOpt(oCntrl,  3, "Cos�o", "Cos�o");
      addOpt(oCntrl,  4, "Jes�s Mar�a", "Jes�s Mar�a");
      addOpt(oCntrl,  5, "Pabell�n de Arteaga", "Pabell�n de Arteaga");
      addOpt(oCntrl,  6, "Rinc�n de Romos", "Rinc�n de Romos");
      addOpt(oCntrl,  7, "San Jos� de Gracia", "San Jos� de Gracia");
      addOpt(oCntrl,  8, "Tepezal�", "Tepezal�");
      addOpt(oCntrl,  9, "San Francisco de los Romo", "San Francisco de los Romo");
      addOpt(oCntrl,  10, "El Llano", "El Llano");
      break;

      case 2: //b california N
      addOpt(oCntrl,  0, "Mexicali", "Mexicali");
      addOpt(oCntrl,  1, "Tijuana", "Tijuana");
      addOpt(oCntrl,  2, "Ensenada", "Ensenada");
      addOpt(oCntrl,  3, "Tecate", "Tecate");
      addOpt(oCntrl,  4, "Rosarito", "Rosarito");
      addOpt(oCntrl,  5, "Ciudad Guadalupe Victoria", "Ciudad Guadalupe Victoria");
      addOpt(oCntrl,  6, "San Felipe", "San Felipe");
      addOpt(oCntrl,  7, "San Quint�n", "San Quint�n");
      addOpt(oCntrl,  8, "Ciudad Morelos", "Ciudad Morelos");
      addOpt(oCntrl,  9, "Los Algodones", "Los Algodones");
      addOpt(oCntrl,  10, "La Rumorosa", "La Rumorosa");
      addOpt(oCntrl,  11, "Catavi�a", "Catavi�a");
      addOpt(oCntrl,  12, "Colonet", "Colonet");
      break;

      case 3: //b california S
      addOpt(oCntrl,  0, "Comond�", "Comond�");
      addOpt(oCntrl,  1, "La Paz", "La Paz");
      addOpt(oCntrl,  2, "Loreto", "Loreto");
      addOpt(oCntrl,  3, "Los Cabos", "Los Cabos");
      addOpt(oCntrl,  4, "Muleg�", "Muleg�");
      break;

      case 4: //campeche
      addOpt(oCntrl,  0, "Calakmul", "Calakmul");
      addOpt(oCntrl,  1, "Calkin�", "Calkin�");
      addOpt(oCntrl,  2, "Campeche", "Campeche");
      addOpt(oCntrl,  3, "Candelaria", "Candelaria");
      addOpt(oCntrl,  4, "Carmen", "Carmen");
      addOpt(oCntrl,  5, "Champot�n", "Champot�n");
      addOpt(oCntrl,  6, "Esc�rcega", "Esc�rcega");
      addOpt(oCntrl,  7, "Hecelchak�n", "Hecelchak�n");
      addOpt(oCntrl,  8, "Hopelch�n", "Hopelch�n");
      addOpt(oCntrl,  9, "Palizada", "Palizada");
      addOpt(oCntrl,  10, "Tenabo", "Tenabo");
      break;

      case 5: //chiapas
      addOpt(oCntrl,  0, "Acacoyagua", "Acacoyagua");
      addOpt(oCntrl,  1, "Acala", "Acala");
      addOpt(oCntrl,  2, "Acapetahua", "Acapetahua");
      addOpt(oCntrl,  3, "Aldama", "Aldama");
      addOpt(oCntrl,  4, "Altamirano", "Altamirano");
      addOpt(oCntrl,  5, "Amat�n", "Amat�n");
      addOpt(oCntrl,  6, "Amatenango de la Frontera", "Amatenango de la Frontera");
      addOpt(oCntrl,  7, "Amatenango del Valle", "Amatenango del Valle");
      addOpt(oCntrl,  8, "Angel Albino Corzo", "Angel Albino Corzo");
      addOpt(oCntrl,  9, "Arriaga", "Arriaga");
      addOpt(oCntrl,  10, "Bejucal de Ocampo", "Bejucal de Ocampo");
      addOpt(oCntrl,  11, "Bella Vista", "Bella Vista");
      addOpt(oCntrl,  12, "Benem�rito de las Am�ricas", "Benem�rito de las Am�ricas");
      addOpt(oCntrl,  13, "Berrioz�bal", "Berrioz�bal");
      addOpt(oCntrl,  14, "Bochil", "Bochil");
      addOpt(oCntrl,  15, "Cacahoat�n", "Cacahoat�n");
      addOpt(oCntrl,  16, "Catazaj�", "Catazaj�");
      addOpt(oCntrl,  17, "Chalchihuit�n", "Chalchihuit�n");
      addOpt(oCntrl,  18, "Chamula", "Chamula");
      addOpt(oCntrl,  19, "Chanal", "Chanal");
      addOpt(oCntrl,  20, "Chapultenango", "Chapultenango");
      addOpt(oCntrl,  21, "Chenalh�", "Chenalh�");
      addOpt(oCntrl,  22, "Chiapa de Corzo", "Chiapa de Corzo");
      addOpt(oCntrl,  23, "Chiapilla", "Chiapilla");
      addOpt(oCntrl,  24, "Chicoas�n", "Chicoas�n");
      addOpt(oCntrl,  25, "Chicomuselo", "Chicomuselo");
      addOpt(oCntrl,  26, "Chil�n", "Chil�n");
      addOpt(oCntrl,  27, "Cintalapa", "Cintalapa ");
      addOpt(oCntrl,  28, "Coapilla", "Coapilla");
      addOpt(oCntrl,  29, "Comit�n de Dom�nguez", "Comit�n de Dom�nguez");
      addOpt(oCntrl,  30, "Copainal�", "Copainal�");
      addOpt(oCntrl,  31, "El Bosque", "El Bosque");
      addOpt(oCntrl,  32, "El Porvenir", "El Porvenir");
      addOpt(oCntrl,  33, "Escuintla", "Escuintla");
      addOpt(oCntrl,  34, "Francisco Le�n", "Francisco Le�n");
      addOpt(oCntrl,  35, "Frontera Comalapa", "Frontera Comalapa");
      addOpt(oCntrl,  36, "Frontera Hidalgo", "Frontera Hidalgo");
      addOpt(oCntrl,  37, "Huehuet�n", "Huehuet�n");
      addOpt(oCntrl,  38, "Huitiup�n", "Huitiup�n");
      addOpt(oCntrl,  39, "Huixt�n", "Huixt�n");
      addOpt(oCntrl,  40, "Huixtla", "Huixtla");
      addOpt(oCntrl,  41, "Ixhuat�n", "Ixhuat�n");
      addOpt(oCntrl,  42, "Ixtacomit�n", "Ixtacomit�n");
      addOpt(oCntrl,  43, "Ixtapa", "Ixtapa");
      addOpt(oCntrl,  44, "Ixtapangajoya", "Ixtapangajoya");
      addOpt(oCntrl,  45, "Jiquipilas", "Jiquipilas");
      addOpt(oCntrl,  46, "Jitotol", "Jitotol");
      addOpt(oCntrl,  47, "Ju�rez", "Ju�rez");
      addOpt(oCntrl,  48, "La Concordia", "La Concordia");
      addOpt(oCntrl,  49, "La Grandeza", "La Grandeza");
      addOpt(oCntrl,  50, "La Independencia", "La Independencia");
      addOpt(oCntrl,  51, "La Libertad", "La Libertad");
      addOpt(oCntrl,  52, "La Trinitaria", "La Trinitaria");
      addOpt(oCntrl,  53, "Larr�inzar", "Larr�inzar");
      addOpt(oCntrl,  54, "Las Margaritas", "Las Margaritas");
      addOpt(oCntrl,  55, "Las Rosas", "Las Rosas");
      addOpt(oCntrl,  56, "Mapastepec", "Mapastepec");
      addOpt(oCntrl,  57, "Maravilla Tenejapa", "Maravilla Tenejapa");
      addOpt(oCntrl,  58, "Marqu�s de Comillas", "Marqu�s de Comillas");
      addOpt(oCntrl,  59, "Mazapa de Madero", "Mazapa de Madero");
      addOpt(oCntrl,  60, "Mazat�n", "Mazat�n");
      addOpt(oCntrl,  61, "Metapa", "Metapa");
      addOpt(oCntrl,  62, "Mitontic", "Mitontic");
      addOpt(oCntrl,  63, "Montecristo de Guerrero", "Montecristo de Guerrero");
      addOpt(oCntrl,  64, "Motozintla", "Motozintla");
      addOpt(oCntrl,  65, "Nicol�s Ru�z", "Nicol�s Ru�z");
      addOpt(oCntrl,  66, "Ocosingo", "Ocosingo");
      addOpt(oCntrl,  67, "Ocotepec", "Ocotepec");
      addOpt(oCntrl,  68, "Ocozocoautla de Espinosa", "Ocozocoautla de Espinosa");
      addOpt(oCntrl,  69, "Ostuac�n", "Ostuac�n");
      addOpt(oCntrl,  70, "Osumacinta", "Osumacinta");
      addOpt(oCntrl,  71, "Oxchuc", "Oxchuc");
      addOpt(oCntrl,  72, "Palenque", "Palenque");
      addOpt(oCntrl,  73, "Pantelh�", "Pantelh�");
      addOpt(oCntrl,  74, "Pantepec", "Pantepec");
      addOpt(oCntrl,  75, "Pichucalco", "Pichucalco");
      addOpt(oCntrl,  76, "Pijijiapan", "Pijijiapan");
      addOpt(oCntrl,  77, "Pueblo Nuevo Solistahuac�n", "Pueblo Nuevo Solistahuac�n");
      addOpt(oCntrl,  78, "Ray�n", "Ray�n");
      addOpt(oCntrl,  79, "Reforma", "Reforma");
      addOpt(oCntrl,  80, "Sabanilla", "Sabanilla");
      addOpt(oCntrl,  81, "Salto de Agua", "Salto de Agua");
      addOpt(oCntrl,  82, "San Andr�s Duraznal", "San Andr�s Duraznal");
      addOpt(oCntrl,  83, "San Crist�bal de las Casas", "San Crist�bal de las Casas");
      addOpt(oCntrl,  84, "San Fernando", "San Fernando");
      addOpt(oCntrl,  85, "San Juan Cancuc", "San Juan Cancuc");
      addOpt(oCntrl,  86, "San Lucas", "San Lucas");
      addOpt(oCntrl,  87, "Santiago el Pinar", "Santiago el Pinar");
      addOpt(oCntrl,  88, "Siltepec", "Siltepec");
      addOpt(oCntrl,  89, "Simojovel", "Simojovel");
      addOpt(oCntrl,  90, "Sital�", "Sital�");
      addOpt(oCntrl,  91, "Socoltenango", "Socoltenango");
      addOpt(oCntrl,  92, "Solosuchiapa", "Solosuchiapa");
      addOpt(oCntrl,  93, "Soyal�", "Soyal�");
      addOpt(oCntrl,  94, "Suchiapa", "Suchiapa");
      addOpt(oCntrl,  95, "Suchiate", "Suchiate");
      addOpt(oCntrl,  96, "Sunuapa", "Sunuapa");
      addOpt(oCntrl,  97, "Tapachula", "Tapachula");
      addOpt(oCntrl,  98, "Tapalapa", "Tapalapa");
      addOpt(oCntrl,  99, "Tapilula", "Tapilula");
      addOpt(oCntrl,  100, "Tecpat�n", "Tecpat�n");
      addOpt(oCntrl,  101, "Tenejapa", "Tenejapa");
      addOpt(oCntrl,  102, "Teopisca", "Teopisca");
      addOpt(oCntrl,  103, "Tila", "Tila");
      addOpt(oCntrl,  104, "Tonal�", "Tonal�");
      addOpt(oCntrl,  105, "Totolapa", "Totolapa");
      addOpt(oCntrl,  106, "Tumbal�", "Tumbal�");
      addOpt(oCntrl,  107, "Tuxtla Chico", "Tuxtla Chico");
      addOpt(oCntrl,  108, "Tuxtla Guti�rrez", "Tuxtla Guti�rrez");
      addOpt(oCntrl,  109, "Tuzant�n", "Tuzant�n");
      addOpt(oCntrl,  110, "Tzimol", "Tzimol");
      addOpt(oCntrl,  111, "Uni�n Ju�rez", "Uni�n Ju�rez");
      addOpt(oCntrl,  112, "Venustiano Carranza", "Venustiano Carranza");
      addOpt(oCntrl,  113, "Villa Comaltitl�n", "Villa Comaltitl�n");
      addOpt(oCntrl,  114, "Villa Corzo", "Villa Corzo");
      addOpt(oCntrl,  115, "Villaflores", "Villaflores");
      addOpt(oCntrl,  116, "Yajal�n", "Yajal�n");
      addOpt(oCntrl,  117, "Zinacant�n", "Zinacant�n");
      break;

      case 6: //chihuhua
      addOpt(oCntrl,  0, "Ahumada", "Ahumada");
      addOpt(oCntrl,  1, "Aldama", "Aldama");
      addOpt(oCntrl,  2, "Allende", "Allende");
      addOpt(oCntrl,  3, "Aquiles Serd�n", "Aquiles Serd�n");
      addOpt(oCntrl,  4, "Ascensi�n", "Ascensi�n");
      addOpt(oCntrl,  5, "Bach�niva", "Bach�niva");
      addOpt(oCntrl,  6, "Balleza", "Balleza");
      addOpt(oCntrl,  7, "Batopilas", "Batopilas");
      addOpt(oCntrl,  8, "Bocoyna", "Bocoyna");
      addOpt(oCntrl,  9, "Buenaventura", "Buenaventura");
      addOpt(oCntrl,  10, "Camargo", "Camargo");
      addOpt(oCntrl,  11, "Carich�", "Carich�");
      addOpt(oCntrl,  12, "Casas Grandes", "Casas Grandes");
      addOpt(oCntrl,  13, "Ch�nipas", "Ch�nipas");
      addOpt(oCntrl,  14, "Chihuahua", "Chihuahua");
      addOpt(oCntrl,  15, "Coronado", "Coronado");
      addOpt(oCntrl,  16, "Coyame del Sotol", "Coyame del Sotol");
      addOpt(oCntrl,  17, "Cuauht�moc", "Cuauht�moc");
      addOpt(oCntrl,  18, "Cusihuiriachi", "Cusihuiriachi");
      addOpt(oCntrl,  19, "Delicias", "Delicias");
      addOpt(oCntrl,  20, "Dr. Belisario Dom�nguez", "Dr. Belisario Dom�nguez");
      addOpt(oCntrl,  21, "El Tule", "El Tule");
      addOpt(oCntrl,  22, "G�mez Far�as", "G�mez Far�as");
      addOpt(oCntrl,  23, "Galeana", "Galeana");
      addOpt(oCntrl,  24, "Gran Morelos", "Gran Morelos");
      addOpt(oCntrl,  25, "Guachochi", "Guachochi");
      addOpt(oCntrl,  26, "Guadalupe", "Guadalupe");
      addOpt(oCntrl,  27, "Guadalupe y Calvo", "Guadalupe y Calvo");
      addOpt(oCntrl,  28, "Guazapares", "Guazapares");
      addOpt(oCntrl,  29, "Guerrero", "Guerrero");
      addOpt(oCntrl,  30, "Hidalgo del Parral", "Hidalgo del Parral");
      addOpt(oCntrl,  31, "Huejotit�n", "Huejotit�n");
      addOpt(oCntrl,  32, "Ignacio Zaragoza", "Ignacio Zaragoza");
      addOpt(oCntrl,  33, "Janos", "Janos");
      addOpt(oCntrl,  34, "Jim�nez", "Jim�nez");
      addOpt(oCntrl,  35, "Ju�rez", "Ju�rez");
      addOpt(oCntrl,  36, "Julimes", "Julimes");
      addOpt(oCntrl,  37, "L�pez", "L�pez");
      addOpt(oCntrl,  38, "La Cruz", "La Cruz");
      addOpt(oCntrl,  39, "Madera", "Madera");
      addOpt(oCntrl,  40, "Maguarichi", "Maguarichi");
      addOpt(oCntrl,  41, "Manuel Benavides", "Manuel Benavides");
      addOpt(oCntrl,  42, "Matach�", "Matach�");
      addOpt(oCntrl,  43, "Matamoros", "Matamoros");
      addOpt(oCntrl,  44, "Meoqui", "Meoqui");
      addOpt(oCntrl,  45, "Morelos", "Morelos");
      addOpt(oCntrl,  46, "Moris", "Moris");
      addOpt(oCntrl,  47, "Namiquipa", "Namiquipa");
      addOpt(oCntrl,  48, "Nonoava", "Nonoava");
      addOpt(oCntrl,  49, "Nuevo Casas Grandes", "Nuevo Casas Grandes");
      addOpt(oCntrl,  50, "Ocampo", "Ocampo");
      addOpt(oCntrl,  51, "Ojinaga", "Ojinaga");
      addOpt(oCntrl,  52, "Praxedis G. Guerrero", "Praxedis G. Guerrero");
      addOpt(oCntrl,  53, "Riva Palacio", "Riva Palacio");
      addOpt(oCntrl,  54, "Rosales", "Rosales");
      addOpt(oCntrl,  55, "Rosario", "Rosario");
      addOpt(oCntrl,  56, "San Francisco de Borja", "San Francisco de Borja");
      addOpt(oCntrl,  57, "San Francisco de Conchos", "San Francisco de Conchos");
      addOpt(oCntrl,  58, "San Francisco del Oro", "San Francisco del Oro");
      addOpt(oCntrl,  59, "Santa B�rbara", "Santa B�rbara");
      addOpt(oCntrl,  60, "Santa Isabel", "Santa Isabel");
      addOpt(oCntrl,  61, "Satev�", "Satev�");
      addOpt(oCntrl,  62, "Saucillo", "Saucillo");
      addOpt(oCntrl,  63, "Tem�sachic", "Tem�sachic");
      addOpt(oCntrl,  64, "Urique", "Urique");
      addOpt(oCntrl,  65, "Uruachi", "Uruachi");
      addOpt(oCntrl,  66, "Valle de Zaragoza", "Valle de Zaragoza");
      break;

      case 7: //coahuila
      addOpt(oCntrl,  0, "Abasolo", "Abasolo");
      addOpt(oCntrl,  1, "Acu�a", "Acu�a");
      addOpt(oCntrl,  2, "Allende", "Allende");
      addOpt(oCntrl,  3, "Arteaga", "Arteaga");
      addOpt(oCntrl,  4, "Candela", "Candela");
      addOpt(oCntrl,  5, "Casta�os", "Casta�os");
      addOpt(oCntrl,  6, "Cuatro Ci�negas", "Cuatro Ci�negas");
      addOpt(oCntrl,  7, "Escobedo", "Escobedo");
      addOpt(oCntrl,  8, "Francisco I. Madero", "Francisco I. Madero");
      addOpt(oCntrl,  9, "Frontera", "Frontera");
      addOpt(oCntrl,  10, "General Cepeda", "General Cepeda");
      addOpt(oCntrl,  11, "Guerrero", "Guerrero");
      addOpt(oCntrl,  12, "Hidalgo", "Hidalgo");
      addOpt(oCntrl,  13, "Jim�nez", "Jim�nez");
      addOpt(oCntrl,  14, "Ju�rez", "Ju�rez");
      addOpt(oCntrl,  15, "Lamadrid", "Lamadrid");
      addOpt(oCntrl,  16, "M�zquiz", "M�zquiz");
      addOpt(oCntrl,  17, "Matamoros", "Matamoros");
      addOpt(oCntrl,  18, "Monclova", "Monclova");
      addOpt(oCntrl,  19, "Morelos", "Morelos");
      addOpt(oCntrl,  20, "Nadadores", "Nadadores");
      addOpt(oCntrl,  21, "Nava", "Nava");
      addOpt(oCntrl,  22, "Ocampo", "Ocampo");
      addOpt(oCntrl,  23, "Parras", "Parras");
      addOpt(oCntrl,  24, "Piedras Negras", "Piedras Negras");
      addOpt(oCntrl,  25, "Progreso", "Progreso");
      addOpt(oCntrl,  26, "Ramos Arizpe", "Ramos Arizpe");
      addOpt(oCntrl,  27, "Sabinas", "Sabinas");
      addOpt(oCntrl,  28, "Sacramento", "Sacramento");
      addOpt(oCntrl,  29, "Saltillo", "Saltillo");
      addOpt(oCntrl,  30, "San Buenaventura", "San Buenaventura");
      addOpt(oCntrl,  31, "San Juan de Sabinas", "San Juan de Sabinas");
      addOpt(oCntrl,  32, "San Pedro", "San Pedro");
      addOpt(oCntrl,  33, "Sierra Mojada", "Sierra Mojada");
      addOpt(oCntrl,  34, "Torre�n", "Torre�n");
      addOpt(oCntrl,  35, "Viesca", "Viesca");
      addOpt(oCntrl,  36, "Villa Uni�n", "Villa Uni�n");
      addOpt(oCntrl,  37, "Zaragoza", "Zaragoza");
      break;

      case 15: //jalisco
      addOpt(oCntrl,  0, "Guadalajara", "Guadalajara");
      addOpt(oCntrl,  1, "Zapopan", "Zapopan");
      addOpt(oCntrl,  2, "Tlaquepaque", "Tlaquepaque");
      addOpt(oCntrl,  3, "Tonal�", "Tonal�");
      addOpt(oCntrl,  4, "Tlajomulco de Zu�iga", "Tlajomulco de Zu�iga");
      addOpt(oCntrl,  5, "Puerto Vallarta", "Puerto Vallarta");
      addOpt(oCntrl,  6, "Lagos de Moreno", "Lagos de Moreno");
      addOpt(oCntrl,  7, "El Salto", "El Salto");
      addOpt(oCntrl,  8, "Tepatitl�n de Morelos", "Tepatitl�n de Morelos");
      addOpt(oCntrl,  9, "Zapotl�n el Grande", "Zapotl�n el Grande");
      addOpt(oCntrl,  10, "Ocotl�n", "Ocotl�n");
      addOpt(oCntrl,  11, "Arandas", "Arandas");
      addOpt(oCntrl,  12, "Tala", "Tala");
      addOpt(oCntrl,  13, "San Juan de los Lagos", "San Juan de los Lagos");
      addOpt(oCntrl,  14, "La Barca", "La Barca");
      addOpt(oCntrl,  15, "Zapotlanejo", "Zapotlanejo");
      addOpt(oCntrl,  16, "Atotonilco el Alto", "Atotonilco el Alto");
      addOpt(oCntrl,  17, "Autl�n de Navarro", "Autl�n de Navarro");
      addOpt(oCntrl,  18, "Ameca", "Ameca");
      addOpt(oCntrl,  19, "Encarnaci�n de D�az", "Encarnaci�n de D�az");
      addOpt(oCntrl,  20, "Sayula", "Sayula");
      addOpt(oCntrl,  21, "Mascota", "Mascota");
      break;
    }
   }


