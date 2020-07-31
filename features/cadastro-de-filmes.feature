            #language: pt

            @login
            Funcionalidade: Cadastro de filmes
            Para que eu possa disponibilizar novos títulos no catálogo
            Sendo um gestor de catálogo
            Posso cadastrar um novo filme

            @new_movie
            Esquema do Cenário: Novo Filme

            Dado que <codigo> é um novo filme
            Quando eu faço o cadastro deste filme
            Então devo o novo filme na lista

            Exemplos:
            | codigo     |
            | "ultimato" |
            | "spider"   |
            | "jocker"   |

            @attempt_movie
            Esquema do Cenário: Campos Obrigatórios
            O gestor de catalogo tenta cadastrar um novo filme, mas esquece
            de preencher um dos campos que são Obrigatórios, em seguida, o sistema
            exibe uma notificação para o usuário.

            Dado que <codigo> é um novo filme
            Quando eu faço o cadastro deste filme
            Então devo ver a notificação <texto>

            Exemplos:
            | codigo      | texto                                          |
            | "no_title"  | "Oops - Filme sem titulo. Pode isso Arnaldo?"  |
            | "no_status" | "Oops - O status deve ser informado!"          |
            | "no_year"   | "Oops - Faltou o ano de lançamento também!"    |
            | "no_date"   | "Oops - Quase lá, só falta a data de estréia!" |
           #| "no_title"  | "Oops - Este titulo já existe no Ninjaflix."   |




    @dup_movie
    Cenário: Duplicado
        O gestor de catalogo tenta cadastrar um filme, porem o título
        já foi cadastrado em outro momento e sistema notifica o usuario
        informando que o titulo já existe.

        Dado que "deadpool2" é um novo filme
        Mas este filme já existe no catalogo
        Quando eu faço o cadastro deste filme
        Então devo ver a notificação "Oops - Este titulo já existe no Ninjaflix."






# Cenário: Sem nome
# Quando eu tento cadastrar um filme sem nome
# Então devo ver a notificação "Oops - Filme sem título. Pode isso Arnaldo?"

# Cenário: Sem status
# Quando eu tento cadastrar um filme sem o status
# Então devo ver a notificação "Oops - O status deve ser informado!"

# Cenário: Ano de Lançamento não informado
# Quando eu tento cadastrar um filme sem ano de lançamento
# Então devo ver a notificação "Oops - Faltou o ano de lançamento também!"

# Cenário: Data de estréia não informado
# Quando eu tento cadastrar um filme sem a data de estréia
# Então devo ver a notificação "Oops - Quase lá, falta a data de estréia!"