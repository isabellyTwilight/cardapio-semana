@import com.example.cardapiosem.Prato
@import java.time.format.DateTimeFormatter
@import java.util.List

@param List<Prato> pratos

@template.layout(
titulo = "Meu Cardápio",
paginaAtiva = "pratos",
conteudo = @`
    <div class="lista-container">

        <div class="lista-cabecalho">

            <div>
                <h1>Meu Cardápio </h1>
                <p>Confira todos os pratos planejados para sua semana.</p>
            </div>

            <a href="/pratos/novo" class="botao">
                + Adicionar prato
            </a>

        </div>

        <div class="tabela-card">

            <div class="tabela-titulo">
                <h2>Pratos planejados (${pratos.size()})</h2>
            </div>

            @if (pratos.isEmpty())

                <div class="lista-vazia">
                    <h3>Nenhum prato cadastrado ainda! </h3>
                    <p>
                        Que tal planejar o jantar de hoje?
                    </p>

                    <a href="/pratos/novo" class="botao">
                        Adicionar primeiro prato
                    </a>
                </div>

            @else

                <div class="tabela-responsiva">

                    <table class="tabela-pratos">

                        <thead>
                        <tr>
                            <th>Nome do prato</th>
                            <th>Tipo</th>
                            <th>Categoria</th>
                            <th>Porções</th>
                            <th>Data planejada</th>
                            <th>Ações</th>
                        </tr>
                        </thead>

                        <tbody>

                        @for (Prato p : pratos)

                            <tr>
                                <td class="nome-prato">
                                    ${p.getNome()}
                                </td>

                                <td>${p.getTipo()}</td>

                                <td>
                                            <span class="categoria">
                                                ${p.getCategoria()}
                                            </span>
                                </td>

                                <td>${p.getPorcoes()}</td>

                                <td>
                                    @if (p.getDataPlanejada() != null)
                                        ${p.getDataPlanejada().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))}
                                    @else
                                        Não informada
                                    @endif
                                </td>
                                <td>
                                    <form action="/pratos/${pratos.indexOf(p)}/feito" method="post">
                                        <button type="submit" class="botao-feito">
                                            Fiz!
                                        </button>
                                    </form>
                                </td>
                            </tr>

                        @endfor

                        </tbody>

                    </table>

                </div>

            @endif

        </div>

    </div>
`
)
