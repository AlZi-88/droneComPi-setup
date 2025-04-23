!include components/Compi.dsl
!include components/Runner.dsl
#!include components/companion_tools.dsl
!include deployment/deployment.dsl
droneComPi = softwareSystem "High level overview of DroneComPi" {
    mac = container "MacBook" {
        description "Developer machine running Ansible"
        technology "macOS 13.5.1"
    }
    runnerPi = container  "Runner Pi" {
        description "Self-hosted GitHub Actions runner for automation."
        technology "Raspberry Pi 4 8GB RAM"
    }
    targetPi = container  "Target Pi" {
        description "Executes ROS2 automation"
        technology "Raspberry Pi 4 8GB RAM"
    }
   
    github = container "GitHub" {
        description "Triggers and receives results from workflows"
        technology "GitHub"
    }

    DeployStep1 = mac -> runnerPi "Run Ansible to configure Runner"
    DeployStep2 = runnerPi -> github "Register as GitHub Actions Runner"
    DeployStep3 = github -> runnerPi "Trigger job via workflow"
    DeployStep4 = runnerPi -> targetPi "Run Ansible to configure TargetPi"
    DeployStep5 = runnerPi -> targetPi "Run final infrastructure test"
    DeployStep6 = runnerPi -> github "Send results to GitHub"
}
runner_ss -> compi_ss "Deploys and configures" 