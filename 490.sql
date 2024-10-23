/*
SENAC DF - CEP Jessé Freire
2024.07.276 - Aprendizagem Profissional de Qualificação em Desenvolvimento de Softwares
Profº Hudson Neves
Projeto Final - Implementação de Banco de Dados Relacional com MySQL
Projeto - Clínica Odontológica OdontoVida
-- Consultas e joins
*/

/*
Esta consulta lista os detalhes das consultas, incluindo o nome do paciente e o nome do dentista responsável por cada consulta.
*/

SELECT
    c.consulta_id,
    p.nome AS paciente_nome,
    d.nome AS dentista_nome,
    c.data_consulta
FROM
    Consulta c
INNER JOIN
    Paciente p ON c.paciente_id = p.paciente_id
INNER JOIN
    Dentista d ON c.dentista_id = d.dentista_id;