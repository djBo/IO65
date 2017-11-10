## IO/65 CPU Module
This module represents the start of the project and the main component of the platform. It consists of a simple board exposing the buses and control lines. It allows free-running of the CPU when powered standalone.

Features:

- Unbuffered access to address and databus
- Pull-down resistors on the data bus to allow free-running
- Pull-up resistors on the control lines
- Switching between internal and external clock
- Reset button
