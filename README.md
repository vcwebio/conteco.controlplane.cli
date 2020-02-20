# controlplane.cli - ContEco

The `controlplane.cli` image of the __ContEco__ container ecosystem.
See `conteco.docs.overview` for more information on the ContEco ecosystem.

The `controlplane.cli` image generates the CLI scripts and implement the internals of CLI v2.  
The internal of CLI v1 is implemented by `controlplane.base`.
See 'How to Run the Controlplane' in the 'How To' section of `conteco.docs.overview` for more information on CLI extraction and use.

## Image Structure

The image default entrypoint is the CLI extraction management script.
It is self-explanatory in its actions and start CLI v2 on successful completion of the process.  
Alternatively, on can invoke the earlier CLI v1.

There are a number of auxiliary methods that make up the full implementation.  
[Overview of Internal Implementation Methods](./docs/INTERNAL-AUXILIARY.md)

## CLI v1

The CLI v1 implements a fixed controlplane CLI. The controlplane must be selected at startup.  
Its command structure is as follows:

```bash
[controlplane] [section] [[method] [arguments]] [selector]
```

CLI v1 only uses host-mounted volumes.

## CLI v2

The CLI v2 uses a slightly different command structure in order facilitate currying.
```bash
[controlplane] [selector] [section] [[method] [arguments]]
```

It is possible to set a fixed command prefix.
Any command that starts with '@' is seen as the next prefix.
This is very handy to run a series of commands across a fixed selection of repositories.

CLI v2 implements the use of data volumes for the controlplane across the board.
The CLI itself starts up with a host-mounted volume.
