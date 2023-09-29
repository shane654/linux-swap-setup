## Swap设置脚本 - `swap_setup.sh`

该脚本为Debian和Ubuntu用户提供了一个简单方法来设置swap文件。

### 功能

- 检测并关闭已存在的swap设置。
- 创建与当前系统内存大小相同的swap文件。
- 调整系统的Swappiness值为10。
- 确保上述设置在重启后仍然有效。

### 使用方法

#### 1. 下载脚本

```bash
bash <(wget -qO- https://github.com/shane654/linux-swap-setup/raw/main/swap_setup.sh)
```

### 注意

请确保您有足够的磁盘空间来创建swap文件。

---

您只需将上述内容保存为`README.md`文件，并上传到您的GitHub仓库中。记得替换链接中的`your_username`和`your_repository`为您的GitHub用户名和仓库名称。
