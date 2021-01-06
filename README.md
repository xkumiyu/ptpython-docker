# ptpython docker

## Usage

```sh
docker run -it xkumiyu/ptpy
```

If you want to share config and history file, do the following:

```sh
docker run -it \
  -v <ptpython dir>:/root/.ptpython/ \
  xkumiyu/ptpy ptpython \
    --config-file /root/.ptpython/config.py \
    --history-file /root/.ptpython/history
```

The path of `<ptpython dir>` will be `$XDG_CONFIG_HOME/ptpython`.
