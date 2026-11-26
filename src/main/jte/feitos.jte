@import com.example.cardapiosem.Prato
@import java.time.format.DateTimeFormatter
@import java.util.List

@param List<Prato> feitos

@template.layout(
titulo = "Pratos Feitos",
paginaAtiva = "feitos",
conteudo = @`
    <div class="lista-container">

        <div class="lista-cabecalho">
            <div>
                <h1>Pratos Feitos</h1>
                <p>Aqui estão as refeições que você já realizou!</p>
            </div>
        </div>

        @if (feitos.isEmpty())

            <div class="lista-vazia">
                <h2>Nenhum prato realizado ainda!</h2>
                <p>Quando você clicar em "Fiz!", seus pratos aparecerão aqui.</p>
                <a href="/pratos" class="botao">
                    Ver meu cardápio
                </a>
            </div>

        @else

            <div class="tabela-card">
                <h2 class="tabela-titulo">Histórico de refeições</h2>

                <div class="tabela-responsiva">
                    <table class="tabela-pratos">
                        <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Tipo</th>
                            <th>Categoria</th>
                            <th>Porções</th>
                            <th>Data planejada</th>
                        </tr>
                        </thead>

                        <tbody>
                        @for (Prato p : feitos)
                            <tr>
                                <td>${p.getNome()}</td>
                                <td>${p.getTipo()}</td>
                                <td>${p.getCategoria()}</td>
                                <td>${p.getPorcoes()}</td>
                                <td>
                                    @if (p.getDataPlanejada() != null)
                                        ${p.getDataPlanejada().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))}
                                    @else
                                        Não informada
                                    @endif
                                </td>
                            </tr>
                        @endfor
                        </tbody>
                    </table>
                </div>
            </div>

        @endif

    </div>
`
)
