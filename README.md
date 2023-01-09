# my_base_nvidia-docker
自分用のベースNvidia-DockerのDockerfile

# Overviwe

Windows 10 WSL2上のDocker環境でGPUを使うためのDockerfile.

環境構築方法については[ここ]()に記載している。

# Environment
- Windows 10 Home
  - バージョン: 22H2
  - OSビルド: 19045 .2364
- RAM: 32GB
- GPU: RTX2080Ti

# Usage

```shell
# イメージをビルド
$docker build -t . <イメージ名>:<タグ>

# コンテナを起動
$docker run --gpus all -it -v {ローカルのパス}:{コンテナ内のパス} <イメージ名>:<タグ>
```
