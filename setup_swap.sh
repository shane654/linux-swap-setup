#!/bin/bash

# 1. 检查是否存在swap
swap_exists=$(swapon --summary | wc -l)

if [ "$swap_exists" -gt 1 ]; then
    echo "Deactivating and removing current swap..."
    # 关闭当前的swap
    sudo swapoff -a
    # 从/etc/fstab中移除swap条目
    sudo sed -i '/swap/d' /etc/fstab
    # 删除swap文件
    sudo rm -f /swapfile
fi

# 2. 创建与当前内存大小相同的swap
mem=$(grep MemTotal /proc/meminfo | awk '{print $2}')
swap_size=$(( $mem / 1024 ))
echo "Creating swap of size $swap_size MB..."
sudo fallocate -l ${swap_size}M /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo "/swapfile none swap sw 0 0" | sudo tee -a /etc/fstab

# 3. 调整Swappiness值为10
echo "Setting swappiness to 10..."
echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.conf

echo "All done! It's recommended to reboot your system."
