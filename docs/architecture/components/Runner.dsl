runner_ss = softwareSystem "GitHub Actions Runner" {
    description "Self-hosted GitHub Actions runner for automation."

    runner_ss_container = container "Runner" {
        description "Deployment and Automation Hardware"
        technology "Raspberry Pi 4 8GB RAM"
    }
    container "Operating System" {
        description "Operating system for the Raspberry Pi."
        technology "Ubuntu 22.04 Server"
    }

    container "Ansible" {
        description "Automates the installation of software on the Target \"ComPi\"."
        technology "Ansible Playbook"
    }

    container "Actions Runner" {
        description "Executes CI/CD pipelines."
        technology "GitHub Actions"
    }
}