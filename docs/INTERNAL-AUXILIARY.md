[`controlplane.cli`](../README.md) >> Internal Implementation Methods

-----

# Internal Implementation Methods

## `/conteco/bin/controlplane`

__`check-extract-run-cli`__  
CLI extraction and v2 executor handler.
This is the only externally accessible method implemented by `controlplane.cli`
and mounted as default entrypoint of the image.

## `/conteco/bin/controlplane/internal`

__`cli-executor`__  
Implements the command executor, consisting of repository selector expansion and controlplane instantiation.

__`create-new-volume`__  
Auxiliary that creates a new `controlplane_repos` data volume.

__`entrypoint`__  
`controlplane.cli` specific `CONTECO_PREENTRYPOINT` invoked at container instantiation.  
It contains the same settings as for `controlplane.base` but also sets the CONTECO_INTERACTIVE environment variable
which force the `--interactive` mode as the container default.

__`generate-cli-scripts`__  
Auxiliary that generates the CLI v2 `cli` and `cli.bat` scripts.

__`generate-start-scripts`__  
Auxiliary that generates the CLI v1 `start` and `start.bat` scripts.

__`manage-existing-volume`__  
Auxiliary that advises the user on CLI execution mode (--continue or --reset), also implements the --reset flag.

__`output-parser-tagged`__  
Implements a JSON parser for `stdout` and `stderr` output when in --verbose mode.

__`run-cli-executor`__  
Auxiliary that runs the CLI v2 commandline.

__`set-runtime-realm`__  
Auxiliary that extracts and sets the realm if different from default.

__`set-selector`__  
Auxiliary that pre-processes the repository selector.

__`wait-for-output-parser-tagged`__  
Implements a JSON parser process monitor waiting for output to complete.

-----
[`controlplane.cli`](../README.md) >> Internal Implementation Methods
