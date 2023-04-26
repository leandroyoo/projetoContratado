# projetoContratado
Esse projeto foi desenvolvido em Delphi e MS SQLServer utilizando o componente de conexação FIREDAC é uma simulação de um sistema PDV aonde poderemos cadastrar produtos e clientes e consultar suas informações que são retornadas do banco


TELA DE LOGIN




![image](https://user-images.githubusercontent.com/94478634/234632839-5050ad7b-cc61-4953-9bae-be500c19a45d.png)





a tela de login é uma tela de segurança comum em todas as aplicações para que haja controle dos niveis de acesso seja dos clientes ou gerencial por enquanto
apenas esta desenvolvido com o nivel de administrador
login: adm
senha: 12345






-------------------------------







-------------------------------







TELA PRINCIPAL




a tela principal é uma espécie de menu aonde o usuário terá a visualizações de
CADASTRO DE VENDAS
CADASTRO DE PRODUTO
CADASTRO DE LOGIN(em desenvolvimento)
GERADOR DE RELATÓRIO


![image](https://user-images.githubusercontent.com/94478634/234634898-872657eb-3022-47e0-8bec-fca69155614e.png)



pensei numa interface amigavel e interativa aonde o usuario terá maior facilidade.





-------------------------------







-------------------------------






TELA CADASTRO DE VENDAS




![image](https://user-images.githubusercontent.com/94478634/234635243-d9e44618-b871-4652-813d-30547f2be86f.png)






a tela cadastro  de vendas é aonde o usuário cadastrará os produtos vendidos e poderá vizualizar o histório de vendas





-------------------------------







-------------------------------








TELA CADASTRO DE CLIENTE


![image](https://user-images.githubusercontent.com/94478634/234635561-24a982a1-5a09-4293-8d32-d9d23161a541.png)


a tela cadastro de cliente é aonde o usuário poderá adicionar e visualizar os clientes cadastrados no sistemas
em breve farei as atualizações de exclusão e atualização dos dados do cliente.



TELA CADASTRO DE PRODUTOS


![image](https://user-images.githubusercontent.com/94478634/234636016-cedce4e0-185c-4c87-864d-73225401b795.png)


a tela cadastro de produtos é aonde o usuário poderá adicionar e visualizar os produtos cadastrados no sistemas
em breve farei as atualizações de exclusão e atualização dos dados.



TELA DE USUARIO

EM DESENVOLVIMENTO


TELA DE RELATORIO
EM DESENVOLVIMENTO


-------------------------------







-------------------------------



A modelagem do banco de dados foi utilizada o modelo relacional para melhor visualização eu criei uma documentação que explica melhor as chaves primarias e estrageiras para o cruzamento desses dados.


MODELO LOGICO






















MODELO CONCEITUAL











MODELAGEM NO SQL SERVER


![image](https://user-images.githubusercontent.com/94478634/234639240-13e2e28e-d15d-429f-97bd-5b6c58520c1e.png)






procedimento para fazer o retorno para aplicação como alguns selects que fazem o retorno para o DBGrid





-------------------------------







-------------------------------










RETORNO DE VENDAS 

![image](https://user-images.githubusercontent.com/94478634/234637423-649a1217-e197-499e-8c18-6fa192c76614.png)







-------------------------------







-------------------------------








RETORNO DE PRODUTOS

![image](https://user-images.githubusercontent.com/94478634/234637916-f2ec5a1c-ce28-4936-b4e1-e2fc07571501.png)





-------------------------------







-------------------------------











RETORNO DE CLIENTES

![image](https://user-images.githubusercontent.com/94478634/234638508-0d7b383e-cb41-423f-ba8d-9148c74763bd.png)



esses procedimentos que fazem os retornos dentro do componentes DBGRID 
EX:

![image](https://user-images.githubusercontent.com/94478634/234638856-bb699e5b-9f10-4eee-9e71-923a5dbbc250.png)




































































