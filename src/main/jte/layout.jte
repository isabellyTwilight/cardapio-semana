@import gg.jte.Content

@param String titulo
@param String paginaAtiva
@param Content conteudo

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>${titulo} - Cardápio da Semana</title>

    <link rel="stylesheet" href="/css/style.css">

</head>

<body>

<div class="container">

    <aside class="sidebar">

        <div class="logo">
             Cardápio da Semana
        </div>

        <nav class="menu">

            <a href="/"
               class="${paginaAtiva.equals("inicio") ? "ativo" : ""}">
                 Início
            </a>

            <a href="/pratos"
               class="${paginaAtiva.equals("pratos") ? "ativo" : ""}">
                 Meu Cardápio
            </a>

            <a href="/pratos/novo"
               class="${paginaAtiva.equals("novo") ? "ativo" : ""}">
                ➕ Adicionar Prato
            </a>

            <a href="/feitos"
               class="${paginaAtiva.equals("feitos") ? "ativo" : ""}">
                 Feitos
            </a>

        </nav>

    </aside>

    <main class="conteudo">
        ${conteudo}
    </main>

</div>

</body>
</html>