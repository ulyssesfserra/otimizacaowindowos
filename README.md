# otimizacaowindowos
Script em Batch para automatizar a manutenção preventiva de computadores Windows! 

O que o script faz?

- Limpeza profunda: Apaga arquivos temporários do usuário e do sistema.
- Cache de inicialização: Limpa a pasta Prefetch.
- Integridade do SO: Executa o Verificador de Arquivos do Sistema (sfc /scannow).
- Reparo de imagem: Corrige a imagem do Windows via DISM.
- Conectividade: Limpa e redefine o cache de DNS (ipconfig /flushdns).

Com isso, uma rotina que exigia vários minutos e comandos repetidos agora roda de forma automática (lembrando que precisa executar como Administrador!).
