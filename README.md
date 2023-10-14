## SQL.Project <img src="https://github.com/brunacpg/SQL.Project/assets/103262900/6782d6b2-57b6-473c-9b32-84e9fe07a7be" width="150" height="150">

<br> Status do Projeto: :heavy_check_mark: 

### Tópicos 

:small_blue_diamond: Descrição do projeto
<br>:small_blue_diamond: Questionário
<br>:small_blue_diamond: Resolução

### Descrição do projeto 

<p align="justify">
O projeto visa melhorar a comunicação interna e a satisfação dos funcionários, permitindo que as empresas tomem medidas informadas para aprimorar o ambiente de trabalho.


### Questionário
<br> **PERGUNTA 1:**  

<br> a) Crie as tabelas com suas respectivas relações.

<br> b) Insira os dados de 3 usuários diferentes que trabalham em 2 empresas diferentes (Sendo uma delas a TechCorp).

<br> c) Dentre esses 3 usuários, 2 deles devem responder à pesquisa de clima com diferentes níveis de satisfação.

<br> **PERGUNTA 2:**  

<br> a) Liste todos os usuários que trabalham na empresa "TechCorp".

<br> b) Exiba o nome de todos os usuários, o nome das empresas em que trabalham e, se tiverem respondido, a nota que deram na pesquisa de clima.

<br> c) Determine qual usuário deu a nota mais alta na pesquisa de clima e exiba o nome do usuário.

<br> d) Qual empresa tem a média de satisfação mais alta? :warning:

### Resolução

**1.a)**

:arrow_forward: **Primeiro passo**: criação das tabelas que fazem parte do banco de dados e definir as relações entre elas. Serão criadas três tabelas: Usuarios, Empresas e PesquisaClima.

**${\color{blue}Tabela-Usuarios:}$** Armazena as informações sobre os usuários do sistema. Ela possui as seguintes colunas:

 **I**) usuario_id - A chave primária da tabela. Um identificador único para cada usuário.
<br> **II**) nome - O nome do usuário;
<br> **III**) email - O endereço de e-mail do usuário;
<br> **IV**) empresa_id - O identificador da empresa em que o usuário trabalha;
<br> **V**) A tabela Usuarios também possui uma restrição de chave estrangeira na coluna empresa_id. Isso significa que cada valor na coluna empresa_id deve corresponder a um valor existente na coluna empresa_id da tabela Empresas;
<br> **VI**) A coluna nome e email da tabela Usuarios é do tipo varchar(255). Isso significa que a coluna pode armazenar uma string com até 255 caracteres;
<br> **VII**) A restrição not null é uma restrição de coluna que impede que um valor NULL seja inserido em uma coluna. Isso é útil para garantir que todas as linhas de uma tabela tenham um valor válido para uma determinada coluna.

**${\color{blue}Tabela-Empresas:}$** Armazena as informações sobre as empresas do sistema. Ela possui as seguintes colunas:

 **I**) empresa_id - A chave primária da tabela. Um identificador único para cada empresa;
 <br> **II**) nome_empresa - O nome da empresa;
 <br> **III**) endereço - O endereço da empresa.
 
**${\color{blue}Tabela-PesquisaClima:}$** Armazena os resultados das pesquisas de clima realizadas com os usuários. Ela possui as seguintes colunas:

**I**) pesquisa_id - A chave primária da tabela. Um identificador único para cada pesquisa.
<br> **II**) usuario_id - O identificador do usuário que respondeu à pesquisa;
<br> **III**) satisfação - O nível de satisfação do usuário;
<br> **IV**) comentário - Comentário do usuário.
<br> **V**) A tabela PesquisaClima também possui uma restrição de chave estrangeira na coluna usuario_id. Isso significa que cada valor na coluna usuario_id deve corresponder a um valor existente na coluna usuario_id da tabela Usuarios.


**1.b)** :arrow_forward: **Segundo passo**:Inserção dos dados dos usuários:

 **I**) O comando INSERT INTO insere dados em uma tabela;
 <br> **II**) As colunas nome, email e empresa_id são preenchidas com os valores fisctícios;
  <br> **III**) VALUES - É usado para separar a lista de colunas da lista de valores.
<br> **IV**) O valor 1 para a coluna empresa_id indica que o usuário trabalha na empresa TechCorp. O valor 2 para a coluna empresa_id indica que o usuário trabalha na TalentAcademy.

**1.c)** :arrow_forward: **Terceiro passo**:Inserção dos dados da Pesquisa de clima:

 **I**) O comando INSERT INTO insere dados em uma tabela;
  <br> **II**) As colunas usuario_id, satisfação e comentário são preenchidas com valores fisctícios;
 <br> **III**) O valor 5 ou 4 para a coluna satisfação indica que o usuário está satisfeito com o seu trabalho. O valor 1 ou 2 para a coluna satisfação indica que o usuário está insatisfeito a sua remuneração.


  
**2.a)**

**I**) SELECT - É usado para selecionar dados de uma tabela;
<br> **II**) nome, email, empresa_id - As colunas que serão selecionadas;
<br> **III**) FROM - Especifica a tabela de onde os dados serão selecionados;
<br> **IV**) Usuarios - O nome da tabela de onde os dados serão selecionados;
<br> **V**) WHERE - É usado para especificar ou filtrar um critério de seleção;
<br> **VI**) empresa_id = 1 - O critério de seleção, todos que trabalham na TechCorp.

**2.b)**

**I**) SELECT - É usado para selecionar dados de uma tabela;
<br> **II**) nome, nome_empresa, satisfação - As colunas que serão selecionadas;
<br> **III**) FROM - Especifica a tabela de onde os dados serão selecionados;
<br> **IV**) JOIN Empresas ON Usuarios.empresa_id = Empresas.empresa_id - A junção JOIN especifica que os dados das tabelas Usuarios e Empresas serão combinados com base no valor das colunas empresa_id;
<br> **V**) LEFT JOIN PesquisaClima ON Usuarios.usuario_id = PesquisaClima.usuario_id - A junção LEFT JOIN especifica que os dados da tabela PesquisaClima serão incluídos nos resultados, mesmo que não existam correspondências nas tabelas Usuarios e Empresas.


**2.c)**

**I**) SELECT - É usado para selecionar dados de uma tabela;
<br> **II**) nome, satisfação - As colunas que serão selecionadas;
<br> **III**) FROM - Especifica a tabela de onde os dados serão selecionados;
<br> **IV**) PesquisaClima - O nome da tabela de onde os dados serão selecionados;
<br> **V**) ORDER BY - O comando ORDER BY é usado para ordenar os resultados;
<br> **VI**) satisfação DESC - Os resultados serão ordenados pela coluna satisfação em ordem decrescente;
<br> **VII**) LIMIT 1 - Apenas a primeira linha dos resultados será retornada.


**2.d)**

**I**) SELECT - É usado para selecionar dados de uma tabela;
<br> **II**) Empresas.nome_empresa, AVG(PesquisaClima.satisfação) AS média_satisfação - As colunas que serão selecionadas;
<br> **III**) FROM - Especifica a tabela de onde os dados serão selecionados;
<br> **IV**) Usuarios, Empresas, PesquisaClima - As tabelas de onde os dados serão selecionados; 
<br> **V**) JOIN - É usado para combinar os dados das tabelas;
<br> **VI**) Usuarios.empresa_id = Empresas.empresa_id - A condição de junção especifica que os dados das tabelas Usuarios e Empresas serão combinados com base no valor das colunas empresa_id;
<br> **VII**) PesquisaClima.usuario_id = Usuarios.usuario_id - A condição de junção especifica que os dados das tabelas PesquisaClima e Usuarios serão combinados com base no valor das colunas usuario_id;
<br> **VIII**) GROUP BY - É usado para agrupar os resultados por um determinado valor;
<br> **IX**) Empresas.nome_empresa - O valor pelo qual os resultados serão agrupados.
