select test.idtest, count(pregunta.idpregunta)
from test join pregunta on pregunta.test_idtest = test.idtest
group by test.idtest
having count(pregunta.idpregunta) =0
;