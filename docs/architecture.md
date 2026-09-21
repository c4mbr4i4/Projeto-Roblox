# Arquitetura inicial

## Organização

`src/server/init.server.luau` inicializa o servidor em `ServerScriptService.Server`. Adicione módulos de regras e serviços sob `src/server`.

`src/client/init.client.luau` inicializa cada cliente em `StarterPlayerScripts.Client`. Adicione controles, efeitos e interface sob `src/client`.

`src/shared` é sincronizado para `ReplicatedStorage.Shared`. Inclua apenas configurações, tipos e utilitários que possam ser conhecidos pelos jogadores. O módulo `GameConfig` reúne nome e versão do jogo.

## Convenções

- Use `--!strict` nos scripts Luau novos.
- Use nomes PascalCase para módulos e nomes claros para funções e variáveis.
- Mantenha regras de gameplay, recompensas e validações no servidor.
- Valide no servidor os dados enviados por clientes ao introduzir RemoteEvents ou RemoteFunctions.
- Armazene segredos fora do repositório e fora de módulos replicados.
- Adicione dependências apenas quando uma mecânica justificar seu uso.

## Cenário e assets

O cenário inicial é definido em `default.project.json`. Para modelos futuros, use arquivos compatíveis com Rojo e registre-os no mapeamento do projeto. Documente IDs e permissões de assets externos quando forem adicionados.

## Escopo atual

Esta base inicializa cliente e servidor e oferece um cenário de teste. Não inclui mecânicas, salvamento de dados, monetização nem publicação automatizada.
