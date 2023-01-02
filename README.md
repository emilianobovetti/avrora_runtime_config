Run an application container with docker compose:

```bash
docker compose run --rm --build main sh
```

Now trying to run `avrora.reg.schema` yields an error

```
~/prj $ mix do compile, avrora.reg.schema --all --module AvroraRuntimeConfig.AvroraClient

18:31:04.980 [debug] reading schema `playground.HelloWorld` from the file /home/app/prj/_build/dev/lib/avrora_runtime_config/priv/schemas/playground/HelloWorld.avsc
schema `playground.HelloWorld' will be skipped due to an error `unconfigured_registry_url'
```

With `mix app.config` it's possible to load runtime config and complete schema registration

```
~/prj $ mix do app.config, avrora.reg.schema --all --module AvroraRuntimeConfig.AvroraClient

18:31:56.521 [debug] reading schema `playground.HelloWorld` from the file /home/app/prj/_build/dev/lib/avrora_runtime_config/priv/schemas/playground/HelloWorld.avsc

18:31:56.744 [debug] new schema `playground.HelloWorld` stored with global id `1`

18:31:56.744 [debug] schema `playground.HelloWorld` will be always resolved from memory
schema `playground.HelloWorld' will be registered
```
