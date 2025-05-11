# 📁 Estrutura de Pastas e Arquivos 📁

```plaintext
lib/
├── main.dart                       # Entry point da aplicação
├── app.dart                        # Widget principal com MaterialApp e rotas
│                                   
├── routes/
│   └── app_routes.dart             # Definições centralizadas de nomes das rotas
│
├── screens/                        # Telas completas com Scaffold e rotas independentes
│   ├── login_screen.dart           # Primeira tela (decisão de cadastro ou login)
│   └── cadastro_screen.dart        # Cadastro e retorno ao login
│
├── views/                          # Conteúdos visuais usados dentro de BaseScreen
│   ├── home_content.dart           # Hub principal do app
│   ├── dashboard_content.dart      # Tela de exemplo (conteúdo)
│   └── sobre_content.dart          # Tela de informações
│
├── widgets/
│   └── base_screen.dart            # Scaffold com BottomNavigationBar e troca de views


	
```

---
