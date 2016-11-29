UPDATE funcionarios
SET salario = 1.1 * salario
WHERE id IN(SELECT id_func FROM atendimento);

UPDATE funcionarios
SET salario = 1.05 * salario
WHERE id IN(SELECT id_func FROM producao);


