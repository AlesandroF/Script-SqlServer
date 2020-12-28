SELECT dept.[Nome],
	   colab_dept.[Nome],
	   colab_dept.[Salario]
  FROM (
		SELECT colaborador.[Salario],
			   colaborador.[Nome],
			   colaborador.[DeptId],
			   ROW_NUMBER() OVER(PARTITION BY colaborador.[DeptId] ORDER BY colaborador.[Salario] DESC) AS roworder
	      FROM [Pessoa] colaborador
  ) colab_dept
  INNER JOIN [Departamento] dept on dept.[Id] = colab_dept.[DeptId]
  WHERE roworder = 1