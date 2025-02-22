resource "kubernetes_service" "flask_hello" {
    metadata {
        name = "flask-hello-service"
        namespace = "default"
    }
    spec {
        selector = {
        app = "flask-hello"
        }
        port {
        port = 3000
        target_port = 3000
        }
        type = "NodePort"
    }
}