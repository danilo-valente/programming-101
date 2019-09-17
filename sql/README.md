# Preparo

```
sqlite3 sample.db
.read tables.sql
.read samples.sql
```

# Questões

1. Buscar:
   1. Usuários que só vendem
   2. Usuários que só compram
2. Funções de agregação
   1. Total em compras
   2. Usuários que mais compram/vendem
   3. Países que mais compram/vendem
   4. Produtos mais comprados/vendidos
3. Atualizar os valores para dólares
4. Remoção:
   1. Todas as compras de uma data/período específico
   2. Produtos com valores inválidos (menor que zero)