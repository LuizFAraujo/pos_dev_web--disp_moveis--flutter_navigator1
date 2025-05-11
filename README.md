# Atividade Prática - Flutter: Navegação com Navigator

Projeto desenvolvido como parte da atividade prática da disciplina de **Dispositivos Móveis** do curso de Pós-Graduação em Desenvolvimento Web – IFSP.

---

## 📋 Disciplina

D3DDM - Desenvolvimento para Dispositivos Móveis

---

## 📦 Objetivo

Construir um aplicativo Flutter aplicando o uso do **Navigator** e seus recursos principais:

- Navegação entre telas com `push` e `pop`
- Substituição de rotas com `pushReplacement`
- Limpeza de pilha com `pushNamedAndRemoveUntil`
- Compreensão da pilha de navegação (`stack`) e controle de fluxo

> Além da proposta inicial, o app foi expandido com refinamentos visuais, componentes reutilizáveis e uma barra de navegação inferior, simulando um fluxo de uso real em aplicações Flutter.

---

## ✨ Funcionalidades principais

- Tela de **Login** e **Cadastro** (navegação de ida e volta)
- Rotas nomeadas centralizadas
- Controle completo da navegação com `Navigator`
- Simulação de fluxo real com múltiplas telas

---

## ➕ Extras implementados

- Navegação com **BottomNavigationBar**:
  - Home
  - Dashboard
  - Sobre
  - Sair (retorna ao Login e limpa a pilha)
- Layout responsivo com telas centralizadas
- **Widgets reutilizáveis** para formulários, botões e textos
- Telas com conteúdo visual e cards simulando dados reais

---

## 📂 Estrutura do projeto

A estrutura completa de pastas e arquivos está descrita em:

📁 [`Estrutura_de_Pastas_e_Arquivos.md`](./Estrutura_de_Pastas_e_Arquivos.md)

---

## 🚀 Como executar o projeto

### ✅ Pré-requisitos

- Flutter SDK (recomenda-se versão 3.19 ou superior)
- VS Code ou Android Studio
- Navegador (para Flutter Web) ou Emulador Android

### ▶️ Passo a passo

1. Clone o repositório:

    ```bash
    git clone https://github.com/LuizFAraujo/pos_dev_web--disp_moveis--flutter_navigator1.git
    cd pos_dev_web--disp_moveis--flutter_navigator1
    ```

2. Instale as dependências:

    ```bash
    flutter pub get
    ```

3. Execute a aplicação:

    - **No navegador (Chrome):**

      ```bash
      flutter run -d chrome
      ```

    - **No emulador Android:**

      ```bash
      flutter run
      ```

---

## 🧠 Conceitos aplicados

- Navegação com `Navigator` (`push`, `pop`, `pushReplacement`, `pushNamedAndRemoveUntil`)
- Pilha de rotas (`Navigator stack`)
- Rotas nomeadas centralizadas (`app_routes.dart`)
- Modularização com responsabilidade única por tela
- Componentização de UI com `StatelessWidget`
- Organização em `screens`, `views`, `widgets`

---

## 📄 Licença

Este projeto está sob a licença MIT – consulte [LICENSE](https://github.com/LuizFAraujo/pos_dev_web--disp_moveis--flutter_navigator1/blob/main/LICENSE) para mais informações.

---

Desenvolvido para fins didáticos como parte da pós-graduação — **POS DEV WEB | Dispositivos Móveis**
