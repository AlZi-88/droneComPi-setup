deploymentEnvironment "DroneComPi-Deployment" {
    deploymentNode "DroneComPi" {
        containerInstance compi_ss_container
    }
    deploymentNode "RunnerPi" {
        containerInstance runner_ss_container
    }
}