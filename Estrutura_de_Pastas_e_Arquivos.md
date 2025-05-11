# 📁 Estrutura de Pastas e Arquivos 📁

A estrutura abaixo apresenta como o projeto **Flutter Navigator - Controle de Pilha e Rotas Nomeadas** está organizado, facilitando a navegação e o entendimento das principais partes do sistema.

Cada camada é separada conforme a responsabilidade: **Screens** para telas completas com `Navigator`, **Views** para conteúdos internos de navegação controlada e **Widgets** para componentes reutilizáveis.

```plaintext
project_root/
├── android/
│   └── ...                               # Código nativo Android
│
├── lib/
│   ├── main.dart                         # Entry point da aplicação
│   ├── app.dart                          # Widget principal com MaterialApp e rotas
│   │
│   ├── routes/
│   │   └── app_routes.dart               # Definições centralizadas de nomes das rotas
│   │
│   ├── screens/                          # Telas completas com Scaffold e rotas independentes
│   │   ├── login_screen.dart             # Primeira tela (decisão de cadastro ou login)
│   │   └── cadastro_screen.dart          # Cadastro e retorno ao login
│   │
│   ├── views/                            # Conteúdos visuais usados dentro de BaseScreen
│   │   ├── home_content.dart             # Hub principal do app
│   │   ├── dashboard_content.dart        # Tela de exemplo (conteúdo)
│   │   └── sobre_content.dart            # Tela de informações
│   │
│   └── widgets/                          # Componentes reutilizáveis
│       ├── base_screen.dart              # Navegação por BottomNavigationBar
│       ├── auth_form_container.dart      # Layout padrão de formulário (padding, scroll, centralização)
│       ├── auth_header.dart              # Cabeçalho com ícone e título
│       ├── app_text_field.dart           # Campo de texto com InputDecoration padronizado
│       └── app_button.dart               # Botão estilizado (elevated ou outlined)
│
├── web/                                  # Configuração do build para Flutter Web
│   └── ...                               # Arquivos gerados automaticamente (favicon, index.html)
│
├── .gitignore
├── .metadata                             # Arquivo interno do Flutter
├── analysis_options.yaml                 # Regras de análise de código (linter)
├── Estrutura_de_Pastas_e_Arquivos.md     # Este arquivo com a estrutura comentada
├── LICENSE                               # Licença de uso (MIT)
├── pubspec.yaml                          # Dependências, assets e configurações do projeto
└── README.md                             # Documentação principal do projeto
```

---

**🧠 Dica**: O projeto segue boas práticas de separação de responsabilidades, com navegação organizada via rotas nomeadas, componentes reutilizáveis e layout consistente entre telas.

> Projeto gerado para fins acadêmicos — Pós-Graduação IFSP.

📄 [Voltar para o README principal](./README.md)
