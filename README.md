# controlplane.cli - ContEco

The `controlplane.cli` image of the __ContEco__ container ecosystem.
See `conteco.docs.overview` for more information on the ContEco ecosystem.

The `controlplane.cli` image implements the commandline interface onto the controlplanes.


```bash
# Extracting the CLI instantiation scripts from the controlplane image
docker run -v %cd%:/conteco/pwd vcwebio/conteco.controlplane.base --interactive extract-cli windows # on Windows
docker run -v $(pwd):/conteco/pwd vcwebio/conteco.controlplane.base --interactive extract-cli linux # on linux

# Starting the CLI
# on linux
./start conteco # to start the controlplane for image configuration
./start modeco # to start the controlplane for module management
# on windows
start.bat conteco # to start the controlplane for image configuration
start.bat modeco # to start the controlplane for module management

# Invoking the API
# when conteco CLI is invoked
conteco [API method] [arguments]

# when modeco CLI is invoked
modeco [API method] [arguments]
```
