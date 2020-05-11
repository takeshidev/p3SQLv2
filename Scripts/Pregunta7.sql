select alumno.nombre, pregunta.test_idtest,
     ((sum(alternativa.correcta) - ((10 - sum(alternativa.correcta))/4)) *7)/10 as puntaje_norm
from alumno
left join respuesta on respuesta.alumno_idalumno=alumno.idalumno
join alternativa on alternativa.idalternativa= respuesta.alternativa_idalternativa
join pregunta on pregunta.idpregunta= alternativa.pregunta_idpregunta

group by alumno.nombre,  pregunta.test_idtest
having puntaje_norm >= 4 

order by puntaje_norm desc
;