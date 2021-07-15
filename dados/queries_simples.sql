SELECT ibge."região",
         sk.uf,
         ibge.estado,
         sk.capital,
         sk."cities count"
FROM dados_estados_ibge2010 AS ibge
JOIN states_kaggle AS sk
    ON ibge.sigla = sk.uf


SELECT ibge."região",
         count(*) 
FROM dados_estados_ibge2010 AS ibge
GROUP BY  ibge."região"