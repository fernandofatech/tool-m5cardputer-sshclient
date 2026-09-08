/*
 * Gerado por fernando-moretes/platform como ponto de partida. ESTE arquivo e
 * seu: o rollout so cria se nao existir, nunca sobrescreve.
 *
 * Modelo C4 de tool-m5cardputer-sshclient. Renderize em https://c4.home.lab (Structurizr Lite)
 * ou cole em https://structurizr.com/dsl.
 */
workspace "tool-m5cardputer-sshclient" "M5Cardputer SSH client experiment for embedded, IoT and developer tooling portfolio work." {

    configuration {
        scope softwaresystem
    }

    model {
        usuario = person "Usuário"
        sistema = softwareSystem "tool-m5cardputer-sshclient" "M5Cardputer SSH client experiment for embedded, IoT and developer tooling portfolio work." {
            app = container "Aplicação" "Descreva o que roda aqui" "ci-generic.yml"
        }
        usuario -> sistema.app "Usa" "HTTPS"
    }

    views {
        systemContext sistema "contexto" {
            include *
            autoLayout lr
        }
        container sistema "containers" {
            include *
            autoLayout lr
        }
        styles {
            element "Person" {
                shape person
                background #08427b
                color #ffffff
            }
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "Container" {
                background #438dd5
                color #ffffff
            }
        }
    }
}
