select COUNT(DISTINCT test.idtest)
from curso join testcurso on curso.idcurso = testcurso.curso_idcurso join test on testcurso.test_idtest = test.idtest ;