using Dates

folders = Dict(
    "1-fundamentos" => Dict(
        "pt-br" => [
            "1-inicio",
            "2-variaveis",
            "3-operadores",
            "4-entrada_e_saida",
            "5-condicionais",
            "6-loops",
            "7-funcoes",
            "8-strings",
            "9-modulos_basicos"
        ],
        "en" => [
            "1-basics",
            "2-variables",
            "3-operators",
            "4-input_output",
            "5-conditionals",
            "6-loops",
            "7-functions",
            "8-strings",
            "9-basic_modules"
        ]
    ), "2-estruturas_de_dados" => Dict(
        "pt-br" => [
            "1-vetores",
            "2-matrizes",
            "3-tuplas",
            "4-namedtuples",
            "5-dicionarios",
            "6-conjuntos",
            "7-compreensoes",
            "8-iteradores"
        ],
        "en" => [
            "1-vectors",
            "2-matrices",
            "3-tuples",
            "4-namedtuples",
            "5-dictionaries",
            "6-sets",
            "7-comprehensions",
            "8-iterators"
        ]
    ), "3-multiple_dispatch_e_funcoes_avancadas" => Dict(
        "pt-br" => [
            "1-multiple_dispatch",
            "2-parametros_e_retornos",
            "3-funcoes_anonimas",
            "4-funcoes_de_ordem_superior",
            "5-tipos_parametrizados",
            "6-macros_basicos"
        ],
        "en" => [
            "1-multiple_dispatch",
            "2-parameters_and_returns",
            "3-anonymous_functions",
            "4-higher_order_functions",
            "5-parametric_types",
            "6-basic_macros"
        ]
    ), "4-structs_tipos_e_oop" => Dict(
        "pt-br" => [
            "1-structs",
            "2-tipos_parametricos",
            "3-sobrecarga_de_funcoes",
            "4-metodos",
            "5-imutabilidade",
            "6-composicao_em_vez_de_heranca"
        ],
        "en" => [
            "1-structs",
            "2-parametric_types",
            "3-method_overloading",
            "4-methods",
            "5-immutability",
            "6-composition_over_inheritance"
        ]
    ), "5-modulos_pacotes_ambiente" => Dict(
        "pt-br" => [
            "1-modulos",
            "2-using_import",
            "3-ambiente_pkg",
            "4-criando_pacotes",
            "5-gerenciamento_dependencias"
        ],
        "en" => [
            "1-modules",
            "2-using_and_import",
            "3-pkg_environment",
            "4-creating_packages",
            "5-dependency_management"
        ]
    ), "6-iteracao_comprehensions_e_geradores" => Dict(
        "pt-br" => [
            "1-comprehensions",
            "2-generators",
            "3-iteradores_customizados",
            "4-performance_de_iteracao"
        ],
        "en" => [
            "1-comprehensions",
            "2-generators",
            "3-custom_iterators",
            "4-iteration_performance"
        ]
    ), "7-io_arquivos_serializacao" => Dict(
        "pt-br" => [
            "1-leitura",
            "2-escrita",
            "3-arquivos_binarios",
            "4-csv",
            "5-json",
            "6-serializacao"
        ],
        "en" => [
            "1-reading",
            "2-writing",
            "3-binary_files",
            "4-csv",
            "5-json",
            "6-serialization"
        ]
    ), "8-assincronia_concorrencia" => Dict(
        "pt-br" => [
            "1-tarefas",
            "2-channels",
            "3-async_await",
            "4-pipelines_de_tarefas"
        ],
        "en" => [
            "1-tasks",
            "2-channels",
            "3-async_await",
            "4-task_pipelines"
        ]
    ), "9-paralelismo_desempenho" => Dict(
        "pt-br" => [
            "1-multithreading",
            "2-multiprocessamento",
            "3-paralelismo_distribuido",
            "4-gpu_cuda_julia",
            "5-performance_tips"
        ],
        "en" => [
            "1-multithreading",
            "2-multiprocessing",
            "3-distributed_parallelism",
            "4-gpu_with_cuda_julia",
            "5-performance_tips"
        ]
    ), "10-matematica_estatistica_numerico" => Dict(
        "pt-br" => [
            "1-algebra_linear",
            "2-calculo_numerico",
            "3-estatistica",
            "4-otimizacao",
            "5-equacoes_diferenciais"
        ],
        "en" => [
            "1-linear_algebra",
            "2-numerical_calculus",
            "3-statistics",
            "4-optimization",
            "5-differential_equations"
        ]
    ), "11-ciencia_de_dados" => Dict(
        "pt-br" => [
            "1-dataframes",
            "2-categorias",
            "3-limpeza_de_dados",
            "4-analise_exploratoria",
            "5-big_data"
        ],
        "en" => [
            "1-dataframes",
            "2-categories",
            "3-data_cleaning",
            "4-eda",
            "5-big_data"
        ]
    ), "12-visualizacao_de_dados" => Dict(
        "pt-br" => [
            "1-plots",
            "2-gadfly",
            "3-makie",
            "4-graficos_interativos"
        ],
        "en" => [
            "1-plots",
            "2-gadfly",
            "3-makie",
            "4-interactive_visualizations"
        ]
    ), "13-machine_learning" => Dict(
        "pt-br" => [
            "1-mlj",
            "2-modelos_basicos",
            "3-avaliacao",
            "4-deep_learning_flux"
        ],
        "en" => [
            "1-mlj",
            "2-basic_models",
            "3-evaluation",
            "4-deep_learning_flux"
        ]
    ), "14-desenvolvimento_web" => Dict(
        "pt-br" => [
            "1-http",
            "2-websockets",
            "3-genie_framework",
            "4-apis_rest"
        ],
        "en" => [
            "1-http",
            "2-websockets",
            "3-genie_framework",
            "4-rest_apis"
        ]
    ), "15-sistemas_shell_devops" => Dict(
        "pt-br" => [
            "1-shell",
            "2-scripts",
            "3-manipulacao_de_processos",
            "4-automacao"
        ],
        "en" => [
            "1-shell",
            "2-scripting",
            "3-process_handling",
            "4-automation"
        ]
    ), "16-projetos_avancados" => Dict(
        "pt-br" => [
            "1-pacotes_profissionais",
            "2-engenharia_de_software",
            "3-documentacao",
            "4-testes",
            "5-benchmarking"
        ],
        "en" => [
            "1-professional_packages",
            "2-software_engineering",
            "3-documentation",
            "4-testing",
            "5-benchmarking"
        ]
    )
)



function create_structure(base_path::String)
    for (category, languages) in folders
        for (lang, subfolders) in languages
            for sub in subfolders
                fullpath = joinpath(base_path, category, lang, sub)
                isdir(fullpath) || mkpath(fullpath)
                println("[Created] $fullpath")
            end
        end
    end
end



println("Digite o caminho onde deseja criar as pastas:")
base = readline()

create_structure(base)