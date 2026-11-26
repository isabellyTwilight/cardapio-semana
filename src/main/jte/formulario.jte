@template.layout(
titulo = "Adicionar Prato",
paginaAtiva = "novo",
conteudo = @`

    <div class="formulario-container">

        <div class="formulario-cabecalho">
            <h1>Novo prato </h1>
            <p>Preencha as informações para planejar sua refeição.</p>
        </div>

        <div class="formulario-card">

            <form action="/pratos" method="post">

                <div class="campo">
                    <label for="nome">Nome do prato *</label>

                    <input
                            type="text"
                            id="nome"
                            name="nome"
                            placeholder="Ex: Lasanha à Bolonhesa"
                            required
                    >
                </div>

                <div class="linha-campos">

                    <div class="campo">
                        <label>Tipo *</label>

                        <div class="opcoes-radio">

                            <label>
                                <input
                                        type="radio"
                                        name="tipo"
                                        value="Almoço"
                                        required
                                >
                                Almoço
                            </label>

                            <label>
                                <input
                                        type="radio"
                                        name="tipo"
                                        value="Jantar"
                                >
                                Jantar
                            </label>

                        </div>
                    </div>

                    <div class="campo">
                        <label for="porcoes">Porções *</label>

                        <input
                                type="number"
                                id="porcoes"
                                name="porcoes"
                                min="1"
                                placeholder="Ex: 4"
                                required
                        >
                    </div>

                </div>

                <div class="campo">
                    <label for="categoria">Categoria *</label>

                    <select id="categoria" name="categoria" required>

                        <option value="">Selecione uma categoria</option>
                        <option value="Massa">Massa</option>
                        <option value="Salada">Salada</option>
                        <option value="Carne">Carne</option>
                        <option value="Vegano">Vegano</option>
                        <option value="Sobremesa">Sobremesa</option>

                    </select>
                </div>

                <div class="campo">
                    <label for="dataPlanejada">Data planejada *</label>

                    <input
                            type="date"
                            id="dataPlanejada"
                            name="dataPlanejada"
                            required
                    >
                </div>

                <div class="campo">
                    <label for="observacao">Observação (opcional)</label>

                    <textarea
                            id="observacao"
                            name="observacao"
                            rows="4"
                            placeholder="Ex: Levar a sobremesa na festa de sábado"
                    ></textarea>
                </div>

                <div class="botoes-formulario">

                    <button type="submit" class="botao">
                        Salvar prato
                    </button>

                    <a href="/pratos" class="botao cancelar">
                        Cancelar
                    </a>

                </div>

            </form>

        </div>

    </div>
`
)
