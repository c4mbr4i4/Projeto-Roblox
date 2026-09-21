# To-do — do zero ao Play

Checklist principal do Projeto Roblox. Marque `[x]` apenas após verificar a entrega. O gênero ainda será definido; as tarefas específicas das mecânicas serão detalhadas na etapa 1. Itens condicionais podem ser registrados como “não se aplica”, com justificativa.

## 1. Definir o jogo

- [ ] Escolher gênero, tema e nome provisório.
- [ ] Definir público e dispositivos suportados.
- [ ] Descrever a ação principal que o jogador repete e o objetivo do jogo.
- [ ] Definir regras, vitória/derrota e duração esperada da sessão.
- [ ] Escolher formato: partidas ou mundo contínuo; solo, cooperativo ou competitivo.
- [ ] Definir quantidade de jogadores por servidor.
- [ ] Selecionar as mecânicas obrigatórias da primeira versão jogável (MVP).
- [ ] Separar ideias futuras do escopo inicial.
- [ ] Registrar decisões em `docs/game-design.md`, com critérios de aceitação por mecânica.
- [ ] Ordenar entregas e definir responsáveis e estimativas quando aplicável.

Entrega: conceito claro e escopo pequeno o suficiente para construir e testar.

## 2. Preparar ferramentas e projeto

- [x] Inicializar Git local e branch `main`.
- [x] Conectar o remoto GitHub e enviar o commit inicial.
- [x] Criar README, arquitetura e convenções de arquivos.
- [x] Separar cliente, servidor e módulos compartilhados.
- [x] Configurar Rojo com versão fixa e mapeamento do projeto.
- [x] Criar plataforma e spawn iniciais.
- [x] Gerar o arquivo `.rbxlx` localmente.
- [x] Configurar e validar build no GitHub Actions.
- [ ] Confirmar instalação e login no Roblox Studio.
- [ ] Disponibilizar Rojo no PATH ou instalar as ferramentas com Rokit.
- [ ] Instalar o plugin Rojo no Studio e conectar com `rojo serve`.
- [ ] Pressionar Play e verificar spawn e mensagens de cliente/servidor no Output.
- [ ] Definir fluxo de branches, revisão e integração de alterações.

**Marco A — primeiro Play técnico:** personagem aparece e se movimenta no cenário inicial sem erros. Ainda não representa um jogo completo.

## 3. Preparar a experiência Roblox

- [ ] Definir propriedade da experiência: conta ou grupo.
- [ ] Criar a experiência e publicar uma versão inicial privada pelo Studio.
- [ ] Registrar Universe ID, Place ID e link na documentação.
- [ ] Configurar permissões de edição dos colaboradores.
- [ ] Configurar dispositivos, limite de jogadores e opções de avatar.
- [ ] Definir separação entre teste e produção, principalmente se houver dados persistentes.
- [ ] Conferir requisitos atuais da conta e da audiência no Creator Dashboard antes dos testes externos.

Entrega: experiência identificada e pronta para receber versões de teste.

## 4. Construir o protótipo jogável

- [ ] Criar mapa simples com blocos para testar a mecânica.
- [ ] Implementar movimentação, câmera e controles adicionais necessários.
- [ ] Implementar a ação principal do jogador.
- [ ] Implementar objetivos e condições de sucesso/falha.
- [ ] Implementar início, fim e reinício de rodada ou ciclo equivalente.
- [ ] Implementar morte, respawn e recuperação ao sair da área jogável.
- [ ] Mostrar instruções mínimas e feedback das ações.
- [ ] Executar regras e decisões importantes no servidor.
- [ ] Jogar um ciclo completo e ajustar clareza, dificuldade e diversão.

**Marco B — primeiro Play do jogo:** entrar, entender o objetivo, agir, concluir ou falhar e jogar novamente sem intervenção do desenvolvedor.

## 5. Consolidar sistemas e multiplayer

- [ ] Organizar módulos com responsabilidades claras.
- [ ] Definir estados do jogo e transições válidas.
- [ ] Tratar entrada, saída e reconexão de jogadores.
- [ ] Sincronizar estado do jogo e interface de cada jogador.
- [ ] Validar tipos, valores, contexto, distância e frequência das solicitações remotas conforme a ação.
- [ ] Manter recompensas, resultados e inventário sob autoridade do servidor.
- [ ] Limpar conexões, objetos temporários e estado ao terminar rodadas ou sair jogadores.
- [ ] Testar servidor com pelo menos dois clientes no Studio.
- [ ] Testar ações simultâneas, entrada tardia, saída durante a rodada e latência.
- [ ] Adicionar análise de código e testes automatizados para lógica crítica conforme os sistemas surgirem.

Entrega: ciclo principal estável no modo e na quantidade de jogadores definidos.

## 6. Progressão e salvamento — condicional

- [ ] Decidir se progresso, moedas, inventário, checkpoints ou configurações devem persistir.
- [ ] Definir estrutura, valores iniciais e versão dos dados.
- [ ] Implementar carregamento e salvamento no servidor com tratamento de falhas.
- [ ] Evitar sobrescrever dados quando o carregamento falhar.
- [ ] Tratar concorrência entre sessões, tentativas limitadas e limites de requisição.
- [ ] Implementar salvamento periódico, na saída e no encerramento conforme aplicável.
- [ ] Separar dados de teste dos dados reais.
- [ ] Testar primeiro acesso, retorno, desconexão, falhas e migração de formato.

Entrega: progresso recuperável sem perdas ou duplicações nos cenários testados, ou decisão documentada de não salvar dados.

## 7. Produzir mapa, arte e áudio

- [ ] Definir estilo visual, paleta e referências.
- [ ] Substituir blocos por cenário e assets finais.
- [ ] Revisar dimensões, colisões, caminhos e pontos de spawn.
- [ ] Criar modelos, animações e efeitos necessários.
- [ ] Configurar iluminação e efeitos considerando desempenho.
- [ ] Adicionar sons e música com controle de volume.
- [ ] Conferir direitos e permissões dos assets e registrar IDs.
- [ ] Inspecionar scripts de modelos externos antes de incorporá-los.
- [ ] Verificar carregamento dos assets na experiência publicada.

Entrega: mapa navegável, legível e coerente com o conceito.

## 8. Finalizar interface e experiência inicial

- [ ] Criar HUD com objetivo, estado e informações essenciais.
- [ ] Criar telas de início, resultado e reinício quando necessárias.
- [ ] Adicionar tutorial curto ou instruções contextuais.
- [ ] Oferecer configurações relevantes, como volume e sensibilidade.
- [ ] Adaptar controles e layout aos dispositivos escolhidos.
- [ ] Revisar textos, contraste, botões e informações que dependam apenas de cor.
- [ ] Tratar carregamento, erro e ausência de dados.
- [ ] Aplicar filtragem/moderação apropriada se houver texto gerado por jogadores.
- [ ] Observar a primeira sessão de alguém que não conhece o jogo.

Entrega: jogador novo entende como começar e concluir o ciclo sem explicações externas.

## 9. Validar qualidade e desempenho

- [ ] Definir matriz de testes e metas de desempenho para os dispositivos suportados.
- [ ] Testar objetivos, derrotas, respawns e reinícios.
- [ ] Testar limites do mapa, colisões e locais onde o personagem pode ficar preso.
- [ ] Testar resoluções e dispositivos reais, além do emulador.
- [ ] Medir desempenho e memória com a lotação pretendida.
- [ ] Otimizar loops, física, efeitos e tráfego de rede com custo excessivo.
- [ ] Verificar crescimento de memória e instâncias após várias rodadas.
- [ ] Testar solicitações inválidas e repetição indevida de ações/recompensas.
- [ ] Executar sessões longas e corrigir erros no Output e console do cliente.
- [ ] Classificar bugs e eliminar falhas que impeçam jogar ou comprometam dados.
- [ ] Repetir testes afetados após correções.
- [ ] Confirmar build aprovado no GitHub Actions para a versão candidata.

Entrega: entrada, ciclo e reinício sem bloqueadores conhecidos; desempenho dentro das metas.

## 10. Realizar teste externo controlado

- [ ] Publicar a versão candidata na experiência de teste.
- [ ] Configurar audiência e permissões para testadores no Creator Dashboard.
- [ ] Confirmar acesso com uma conta de testador.
- [ ] Preparar roteiro de teste e local para registrar feedback e bugs.
- [ ] Observar compreensão, dificuldade, duração e vontade de jogar novamente.
- [ ] Corrigir problemas e testar a nova versão.
- [ ] Congelar escopo do lançamento e registrar melhorias futuras.

Entrega: jogadores externos completam o ciclo pelo aplicativo Roblox.

## 11. Preparar o lançamento

- [ ] Definir nome final, descrição, ícone e miniaturas.
- [ ] Revisar conteúdo e assets conforme as regras da plataforma.
- [ ] Preencher questionário de maturidade e conformidade aplicável.
- [ ] Conferir e cumprir requisitos atuais da audiência pretendida.
- [ ] Revisar colaboradores, permissões de assets e dispositivos habilitados.
- [ ] Registrar versão, alterações e commit do lançamento.
- [ ] Guardar versão estável e documentar como restaurá-la.
- [ ] Atualizar README com link e instruções para jogar.

Monetização é opcional e não bloqueia o primeiro Play:

- [ ] Decidir se haverá passes/produtos e seus benefícios.
- [ ] Implementar validação de compras no servidor e entrega idempotente de produtos.
- [ ] Testar cancelamentos, repetições e reconexões antes de ativar vendas.

Entrega: versão e apresentação prontas para o público definido.

## 12. Publicar e apertar Play

- [ ] Publicar o place correto na experiência de produção pelo Studio.
- [ ] Configurar e salvar a audiência pretendida no Creator Dashboard.
- [ ] Abrir a página com uma conta que represente o público autorizado.
- [ ] Clicar em **Play** e confirmar entrada pelo aplicativo Roblox.
- [ ] Verificar controles, áudio, interface, carregamento e assets.
- [ ] Completar um ciclo, reiniciar e validar salvamento se existir.
- [ ] Testar com outro jogador e outro dispositivo suportado.
- [ ] Confirmar que o link divulgado aponta para a experiência correta.

**Marco C — jogo disponível:** o público definido acessa o link, clica em Play e joga o ciclo completo na versão publicada.

## 13. Acompanhar após o lançamento

- [ ] Monitorar erros, desempenho e falhas de dados quando aplicável.
- [ ] Recolher feedback e priorizar correções.
- [ ] Acompanhar métricas relevantes, como conclusão do tutorial e duração da sessão.
- [ ] Publicar correções com versão e plano de recuperação.
- [ ] Planejar conteúdo a partir do comportamento dos jogadores.

## Por onde começar agora

1. Definir gênero e mecânica principal na etapa 1.
2. Concluir conexão com o Studio e alcançar o Marco A.
3. Construir protótipo e alcançar o Marco B antes da arte final.
4. Completar sistemas aplicáveis, validar e alcançar o Marco C.

## Referência

Consulte a [documentação oficial de criação e publicação](https://create.roblox.com/docs/production/publishing/publish-games-and-places) e o Creator Dashboard ao executar as etapas de publicação e acesso externo. Requisitos de audiência e elegibilidade podem mudar. Publicar uma versão e disponibilizá-la ao público são ações distintas.
