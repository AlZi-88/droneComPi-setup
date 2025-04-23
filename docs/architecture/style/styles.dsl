styles {

    element "Software System" {
        background "#1168bd"
        color "#ffffff"
    }

    element "Container" {
        background "#438dd5"
        color "#ffffff"
    }

    element "Component" {
        background "#85bbf0"
        color "#000000"
    }

    element "Person" {
        background "#08427b"
        color "#ffffff"
        shape "Person"
    }

    relationship "Synchronous" {
        dashed true
        routing "Direct"
    }

    relationship "Asynchronous" {
        dashed true
        routing "Orthogonal"
    }
}
