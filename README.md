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

To use the network firmware update functionality, you will need to generate an upload script via `mix firmware.gen.script`.
This command will generate a new `upload.sh` script which we can run to update the firmware.

To update your setup, the simplest way is to use `mix firmware && ./upload.sh 192.168.X.X`:
the first comand creates the updated firmware, and the second one pushes it over the network and reboots the device.
You can finally stop having to swap SD cards in and out of the device!

## Troubleshooting

### No secret keybase found

Just go to a Phoenix project and generate a new key using `mix phx.gen.secret`.
Later on add the generated key to your env by putting the following in your `~/.bashrc`:

```
export SECRET_KEY_BASE=uhxakjhsdkhj
```
