systemContext compi_ss "DroneComPi" {
    include *
    autolayout lr
}

container compi_ss "DroneComPi-Container" {
    include *
    autolayout lr
}

deployment runner_ss "DroneComPi-Deployment" {
    /* node "DroneComPi" {
        containerInstance compi_ss "DroneComPi-Container" {
        }
    }
    node "RunnerPi" {
        containerInstance runner_ss "GitHub Actions Runner" {
        }
    } */
    include *
    autolayout lr
}

dynamic droneComPi "DroneComPi-Deployment-Sequence" {
    
    DeployStep1
    DeployStep2
    DeployStep3
    DeployStep4
    DeployStep5
    DeployStep6
    autolayout lr
}


theme default
