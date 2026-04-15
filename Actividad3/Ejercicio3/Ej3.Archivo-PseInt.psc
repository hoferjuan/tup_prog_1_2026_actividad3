Proceso lista_canciones
	Definir cant_canciones, t_lista, i, h, m, s Como Entero;
	Definir m_may, s_may, m_men, s_men Como Entero;
	Definir nom_c, nom_may, nom_men Como Cadena;
	Definir min, seg, seg_tot, may_dur, men_dur Como Entero;
	// inicializar
	may_dur <- 0;
	t_lista <- 0;
	Escribir 'Ingrese la cantidad de canciones a procesar';
	Leer cant_canciones;
	Para i<-1 Hasta cant_canciones Hacer
		Escribir 'Ingrese nombre de la cancíon';
		Leer nom_c;
		Escribir 'ingrese minutos luego segundos de la canción';
		Leer min, seg;
		// conversion
		seg_tot <- (min*60)+seg;
		// acumular duración total
		t_lista <- t_lista+seg_tot;
		// primera canción
		Si i=1 Entonces
			may_dur <- seg_tot;
			men_dur <- seg_tot;
			nom_may <- nom_c;
			nom_men <- nom_c;
		FinSi
		// verificar mayor duración
		Si seg_tot>may_dur Entonces
			may_dur <- seg_tot;
			nom_may <- nom_c;
		FinSi
		// verificar menor duración
		Si seg_tot<men_dur Entonces
			men_dur <- seg_tot;
			nom_men <- nom_c;
		FinSi
	FinPara
	// convertir duración total a HH:MM:SS
	h <- trunc(t_lista/3600);
	m <- trunc((t_lista MOD 3600)/60);
	s <- (t_lista MOD 3600) MOD 60;
	// convertir mayor duración a MM:SS
	m_may <- trunc(may_dur/60);
	s_may <- may_dur MOD 60;
	// convertir menor duración a MM:SS
	m_men <- trunc(men_dur/60);
	s_men <- men_dur MOD 60;
	// mostrar resultados
	Escribir 'Cancion con mayor duración: ', nom_may;
	Escribir 'Duración: ', m_may, ' minutos ', s_may, ' segundos';
	Escribir 'Cancion con menor duración: ', nom_men;
	Escribir 'Duración: ', m_men, ' minutos ', s_men, ' segundos';
	Escribir 'Duración total de la lista:';
	Escribir h, ' horas ', m, ' minutos ', s, ' segundos';
FinProceso
