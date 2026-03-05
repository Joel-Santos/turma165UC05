---
title: Atividade Avaliativa – API de Alunos
course: Desenvolvedor Full Stack
uc: UC 5 - Implementar Banco de Dados para Web
instructor: Joel Santos
date: 2026
---

# 📚 Atividade Avaliativa – API de Alunos

**Node.js + Express + PostgreSQL**

## 📋 Informações Gerais

- **Curso**: Desenvolvedor Full Stack
- **UC**: UC 5 - Implementar Banco de Dados para Web
- **Instrutor**: Joel Santos

---

## 🗂️ Estrutura da Tabela

Considere que existe uma tabela **alunos** com a seguinte estrutura:

* **id**
* **nome**
* **curso**
* **nota**

A API já possui um CRUD básico implementado.

**Sua tarefa**: criar novos endpoints para consultas específicas, utilizando a arquitetura **MVC** (Model, Controller e Routes).

---

## 📝 Exercícios

### Parte 1️⃣ — Consultas Básicas

### 1) Listar alunos ordenados pelo nome

Crie um endpoint que **liste todos os alunos ordenados pelo nome em ordem alfabética**.

**Exemplo de rota**

```
GET /alunos/ordenados
```

---

### 2) Ranking de alunos

Crie um endpoint que **liste todos os alunos ordenados pela nota da maior para a menor**.

**Exemplo de rota**

```
GET /alunos/ranking
```

---

### 3) Listar apenas nome e nota

Crie um endpoint que **retorne apenas o nome e a nota dos alunos**, sem exibir os outros campos.

**Exemplo de rota**

```
GET /alunos/notas
```

---

### 4) Listar cursos cadastrados

Crie um endpoint que **retorne todos os cursos existentes na tabela**, sem repetir valores.

**Exemplo de rota**

```
GET /cursos
```

---

### Parte 2️⃣ — Filtros

### 5) Buscar alunos por parte do nome

Crie um endpoint que permita **buscar alunos utilizando parte do nome**.

**Exemplo de rota**

```
GET /alunos/busca/:nome
```

Exemplo de uso:

```
/alunos/busca/raf
```

---

### 6) Alunos com nota maior que um valor

Crie um endpoint que retorne **todos os alunos com nota maior que um valor informado**.

**Exemplo de rota**

```
GET /alunos/notas/maior/:nota
```

---

### 7) Alunos com nota entre dois valores

Crie um endpoint que retorne **todos os alunos com nota entre dois valores informados**.

**Exemplo de rota**

```
GET /alunos/notas/:min/:max
```

---

### Parte 3️⃣ — Estatísticas

### 8) Média das notas

Crie um endpoint que retorne **a média das notas de todos os alunos cadastrados**.

**Exemplo de rota**

```
GET /alunos/media
```

---

### 9) Maior e menor nota

Crie um endpoint que retorne:

* a **maior nota**
* a **menor nota**

**Exemplo de rota**

```
GET /alunos/extremos
```

---

### 10) Quantidade de alunos por curso

Crie um endpoint que mostre **quantos alunos existem em cada curso**.

**Exemplo de rota**

```
GET /alunos/quantidade-por-curso
```

---

### Parte 4️⃣ — Desafios

### 11) Top 3 alunos

Crie um endpoint que retorne **os três alunos com as maiores notas**.

**Exemplo de rota**

```
GET /alunos/top3
```

---

### 12) Aluno com menor nota

Crie um endpoint que retorne **o aluno com a menor nota cadastrada**.

**Exemplo de rota**

```
GET /alunos/pior
```

---

### 13) Status do aluno (Aprovado/Reprovado)

Crie um endpoint que retorne **todos os alunos com um status calculado**, baseado na regra:

* **Aprovado** → nota ≥ 7
* **Reprovado** → nota < 7

**Exemplo de rota**

```
GET /alunos/status
```

---

### 14) Média por curso

Crie um endpoint que retorne **a média das notas para cada curso existente**.

**Exemplo de rota**

```
GET /alunos/media-por-curso
```

---

### 15) Ranking completo

Crie um endpoint que retorne **todos os alunos ordenados pela nota**, formando um ranking geral.

**Exemplo de rota**

```
GET /alunos/ranking-completo
```

---

---

## 📌 Atividade Avaliativa

Esta é uma **atividade avaliativa** que faz parte da UC 5 - Implementar Banco de Dados para Web.

### Critérios de Avaliação

- ✅ **Funcionalidade**: Todos os endpoints implementados funcionam corretamente
- ✅ **Código**: Estrutura MVC bem organizada e legível
- ✅ **Queries SQL**: Uso correto das operações solicitadas
- ✅ **Completude**: Todos os 15 exercícios foram resolvidos
- ✅ **Testes**: API testada e sem erros

### Data de Entrega

**📅 Hoje, 5 de março de 2026 até às 22h (22:00)**

---

## 🎯 Objetivo da Atividade

Praticar:

* ✅ Criação de **novos endpoints em APIs REST**
* ✅ Organização do código em **Model, Controller e Routes**
* ✅ Consultas SQL utilizando:
  * `ORDER BY`
  * `WHERE`
  * `LIKE`
  * `AVG`
  * `MAX`
  * `MIN`
  * `GROUP BY`
* ✅ Integração entre **Node.js, Express e PostgreSQL**
