An example project for demonstrating CI with STM32 uCs.

For each PR, the following is checked:
* STM32CubeIDE project must compile
* code must be formatted correctly
* unit tests must pass
* code coverage report generated

It uses this GitHub action:
https://github.com/milesfrain/stm32-action

Which uses this docker image:
https://github.com/milesfrain/stm32-docker
