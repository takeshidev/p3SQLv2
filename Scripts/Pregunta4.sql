select curso.idcurso, count(alumno.idalumno)
from curso join alumno on alumno.curso_idcurso=curso.idcurso
group by curso.idcurso
;