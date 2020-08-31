# Nerves of Steel

**TODO: add description**

When developing the JSON API, we can simply run the Phoenix server from the **json_api** project directory:

```
cd json_api
iex -S mix phx.server
```

When it's time to deploy firmware to our hardware, we can do it from the **firmware** project directory:

```
cd firmware
export MIX_TARGET=rpi3
mix deps.get
mix firmware
# (Connect the SD card)
mix firmware.burn
```
