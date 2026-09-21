# Projeto Roblox

Base inicial para um jogo na plataforma Roblox. O nome, o gênero e as mecânicas serão definidos durante o desenvolvimento.

## Tecnologias

- Roblox Studio para edição visual e testes de gameplay.
- Luau com tipagem estrita para os scripts.
- [Rojo 7.6.1](https://github.com/rojo-rbx/rojo/releases/tag/v7.6.1) para sincronizar o código e gerar o arquivo do jogo.
- Git e GitHub Actions para versionamento e validação do build.

## Estrutura

```text
src/
  client/                 Scripts executados no cliente
  server/                 Scripts executados no servidor
  shared/                 Módulos acessíveis aos dois lados
docs/                     Documentação de desenvolvimento
default.project.json      Mapeamento Rojo e cenário inicial
rokit.toml                Versão fixa da ferramenta de build
.github/workflows/        Integração contínua
```

## Preparar o ambiente

1. Instale o [Roblox Studio](https://create.roblox.com/) e o Git.
2. Instale o CLI do Rojo 7.6.1 pelo link acima e adicione o executável ao `PATH`. Como alternativa, use [Rokit](https://github.com/rojo-rbx/rokit) e execute `rokit install` nesta pasta.
3. Execute `rojo plugin install` para instalar o plugin do Studio.
4. Abra um projeto novo no Studio e, nesta pasta, execute:

   ```powershell
   rojo serve
   ```

5. No plugin Rojo do Studio, conecte-se ao servidor local na porta `34872` e aceite a sincronização.
6. Pressione **Play**. O cenário contém uma plataforma e um ponto de spawn. A janela **Output** deve mostrar as mensagens de inicialização do servidor e do cliente.

O Rojo sincroniza os arquivos para o Studio. Alterações feitas no Studio em objetos gerenciados pelo Rojo devem ser reproduzidas nos arquivos para serem preservadas.

## Gerar o jogo

```powershell
New-Item -ItemType Directory -Force build
rojo build default.project.json --output build/ProjetoRoblox.rbxlx
```

Abra o arquivo gerado no Studio para testar. A pasta `build/` não é versionada.

## Validação e publicação

Cada push ou pull request para `main` executa o build no GitHub Actions e disponibiliza o `.rbxlx` como artefato. Isso valida o mapeamento do projeto, mas não substitui os testes de scripts e gameplay no Studio.

Antes de integrar alterações, teste em **Play** e, para recursos de rede, com um servidor e pelo menos dois clientes. Confira erros no **Output**.

A publicação na Roblox é manual pelo Studio. Ainda não há experiência, IDs de universo/place, persistência ou credenciais configuradas. Nunca versione tokens, senhas ou chaves de API.

## Próximos passos

- Definir o conceito do jogo e seu ciclo principal.
- Implementar a primeira mecânica jogável.
- Criar interface e direção visual.
- Configurar a experiência Roblox e testar multiplayer.

Veja [a arquitetura inicial](docs/architecture.md) para as convenções de código.
