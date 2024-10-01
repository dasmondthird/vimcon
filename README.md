Установка VirtualBox Guest Additions
1. Подготовка системы
Перед установкой убедитесь, что ваша система обновлена и установлены необходимые пакеты для сборки модулей:
bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential dkms linux-headers-$(uname -r)

Эти команды обновят список пакетов, установят обновления и необходимые заголовки ядра.
2. Подключение образа диска Guest Additions
В меню VirtualBox выберите Устройства -> Подключить образ диска Дополнений гостевой ОС.... Это смонтирует образ VBoxGuestAdditions.iso в вашей виртуальной машине.
3. Установка Guest Additions
Теперь выполните следующие команды для установки Guest Additions:
bash
sudo mkdir /mnt/cdrom
sudo mount /dev/cdrom /mnt/cdrom
cd /mnt/cdrom
sudo sh VBoxLinuxAdditions.run

Если вы используете графическую оболочку и хотите избежать ошибок, вы можете добавить параметр --nox11:
bash
sudo sh VBoxLinuxAdditions.run --nox11

4. Перезагрузка системы
После завершения установки перезагрузите виртуальную машину:
bash
sudo reboot

5. Проверка установки
После перезагрузки вы можете проверить, что модули Guest Additions загружены, с помощью следующей команды:
bash
lsmod | grep vbox

Также можно проверить работу службы VBoxService:
bash
ps -auxw | grep [v]box
