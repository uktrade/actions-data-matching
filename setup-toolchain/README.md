# setup-toolchain

Composite action that checks out the repo and installs [uv](https://docs.astral.sh/uv/) (with Python), and optionally [`just`](https://just.systems/man/en/) and [`bun`](https://bun.sh/).

## Usage

```yaml
- uses: ./.github/actions/setup-toolchain
  with:
    python-version: "3.12"
    install-bun: "true"
```

## Inputs

| Name              | Description                              | Default |
| ----------------- | ----------------------------------------- | ------- |
| `fetch-depth`      | Number of commits to fetch (`0` for full) | `1`     |
| `python-version`   | Python version to install                 | `3.13`  |
| `install-just`     | Whether to install `just`                 | `true`  |
| `install-bun`      | Whether to install `bun`                  | `false` |

`just` and `bun` versions are pinned inside the action, not configurable per call.
