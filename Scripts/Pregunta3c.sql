select test.idtest, pregunta.idpregunta, count(alternativa.idalternativa)
from test 
    join pregunta on pregunta.test_idtest = test.idtest 
    join alternativa on alternativa.pregunta_idpregunta=pregunta.idpregunta
group by test.idtest, pregunta.idpregunta
having sum(alternativa.correcta) =4 OR  sum(alternativa.correcta) =0