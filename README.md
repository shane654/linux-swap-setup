## Swap设置脚本 - `swap_setup.sh`

该脚本为Debian和Ubuntu用户提供了一个简单方法来设置swap文件。

### 功能

- 检测并关闭已存在的swap设置。
- 创建与当前系统内存大小相同的swap文件。
- 调整系统的Swappiness值为10。
- 确保上述设置在重启后仍然有效。

### 使用方法

```bash
bash <(wget -qO- https://github.com/shane654/linux-swap-setup/raw/main/swap_setup.sh)
```

### 注意

请确保有足够的磁盘空间来创建swap文件。

