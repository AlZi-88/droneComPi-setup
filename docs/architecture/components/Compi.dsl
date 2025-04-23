compi_ss = softwareSystem "DroneComPi" {
    description "The Raspberry Pi that runs PX4 and ROS2."
    
    compi_ss_container = container "Raspberry Pi Controller" {
        description "Companion Computer for the drone."
        technology "Raspberry Pi 4 8GB RAM"
    }

    container "Operating System" {
        description "Operating system for the Raspberry Pi."
        technology "Ubuntu 22.04 Server"
    }   

    container "Middleware" {
        description "Middleware for communication and provisioning of open source packages for e.g. sensor data processing or driving actuators."
        technology "ROS 2 Humble"
    }
    container "PX4-ROS2 bridge" {
        description "ROS 2 Bridge using uXRCE-DDS" 
        technology "uXRCE-DDS"       
    }

    container "PX4-Messages" {
        description "Messages exchanged between PX4 and ROS2."
    } 
}