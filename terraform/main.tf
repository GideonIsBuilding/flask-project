resource "kubernetes_deployment" "flask-hello" {
    metadata {
        name = "flask-hello"
        namespace = "default"
    }

    spec {
        replicas = var.replicas
        selector {
        match_labels = {
            app = "flask-hello"
            }
        }

        template {
            metadata {
                labels = {
                    app = "flask-hello"
                }
            }
            spec {
                container {
                    image = var.flask-image
                    name = "flask-hello"
                    port {
                        container_port = 3000
                    }
                    env {
                        name = "FLASK_ENV"
                        value = "production"
                    }
                }
            }
        }
    }
}