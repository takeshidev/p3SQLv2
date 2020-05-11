select curso.idcurso,count (test.idtest) as num_tests
from curso join testcurso on curso.idcurso = testcurso.curso_idcurso join test on testcurso.test_idtest = test.idtest 
group by curso.idcurso
HAVING count (test.idtest)<1
;