# Portal-Contador-Back

``npm init -y - criar o arquivo package.json
``npm i typescript @types/node tsx tsup -D
``npm tsc --init
``npm i fastify
``npm i dotenv
``npm i zod
``npm i eslint @rocketseat/eslint-config -D

config no tsconfig.json para facilitar os import de arquivos
"baseUrl": "./",
"paths": {
	"@/": ["./src/*"]
},

``npm i prisma -D // instala a depêndencia de desenvolvimento
``npm i @prisma/client // instala a depêndencia de produção, para acessar o banco
``npx prisma init - inicia o prisma dentro do projeto
``npx prisma generate - inicia o prisma dentro do projeto


- [ ] POST | /auth/login | Login do contador
- [ ] GET | /contador/me | Buscar dados do contador logado
- [ ] GET | /clientes | Listar clientes do contador logado
- [ ] GET | /clientes/:id/fiscal | Ver dados fiscais do cliente (simulado)
- [ ] POST | /indicacoes | Cadastrar uma nova indicação
- [ ] GET | /indicaces | Listar as indicações feitas
- [ ] GET | /premios | Listar os prêmios do contador logado
