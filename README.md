# 🦦 Tufetch
CLI system information fetching tool

## Usage

### Installation

```bash
$ make install
```
> Installs `tufetch` under `$HOME/.local/bin/`

### Uninstall

```bash
$ make clean
```
> Cleans installation dirs (including symlinks)

### Development

```bash
$ make link
```
> This will symlink the script to `/usr/local/bin`. Additonally, you could specify a custom path using the `BIN` parameter like so:

```bash
$ make link BIN=/tmp/
```
