<div align="center">
  
![pba](https://user-images.githubusercontent.com/23629420/163564929-166f6a01-a6e2-4412-a4e9-40e54c821f05.png)

# Deploy VPN server on Akash Network and configure OpenVPN client.

# Развертка сервера VPN на Akash Network и настройка клиента OpenVPN.

  </div>
  
<div align="center">

| [Akash Network](https://akash.network/) | [Forum Akash Network](https://forum.akash.network/) | 
|:--:|:--:|
___

Our news channels and technical support:

Наши новостные каналы и русскоязычная техническая поддержка:

| [Discord Akash](https://discord.gg/WR56y8Wt) | [Telegram Akash EN](https://t.me/AkashNW) | [Telegram Akash RU](https://t.me/akash_ru) | [TwitterAkash](https://twitter.com/akashnet_) | [TwitterAkashRU](https://twitter.com/akash_ru) |
|:--:|:--:|:--:|:--:|:--:|

Before you begin, ***[download and install](https://akashlytics.com/deploy) the Cloudmos (Akashlytics)*** software on your work computer.

Перед началом ознакомления ***[скачайте и установите](https://akashlytics.com/deploy) Cloudmos (Akashlytics)*** на свой рабочий компьютер.
  
</div>

</div>
<div align="center">
  
[English version](https://github.com/Dimokus88/VPNAkash/blob/main/README.md#english-guide) | [Русская версия](https://github.com/Dimokus88/VPNAkash/blob/main/README.md#%D0%B8%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BA%D1%86%D0%B8%D1%8F-%D0%BD%D0%B0-%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%BC)
  
</div>

___

#### English guide

> This VPN solution is general purpose and should only be used to access blocked resources in your country. However, **SoftEtherVPN** is a very powerful tool with a huge amount of settings that can solve almost any network problem. Visit the [SoftEtherVPN](https://www.softether.org/) website for more details.

### Deploy VPN Server

* Deploy using **Cloudmos (Akashlytics)** [deploy.yml](https://github.com/Dimokus88/VPNAkash/blob/main/deploy.yml) VPN server, specifying **username** and **password**. ( [Instructions for working with Cloudmos(Akashlytics)](https://github.com/Dimokus88/guides/blob/main/Akashlytics/RU-guide.md)).

* Wait for the deployment to complete:

<p align="center"><img src="https://user-images.githubusercontent.com/23629420/185329065-31fc2117-dbf0-457b-91b1-86e4265da6fd.png" width=30% </p>

### Connection certificate

* Follow the link from the `Leases` tab and download the certificate.

<p align="center"><img src="https://user-images.githubusercontent.com/23629420/185329937-bcf45a6f-5f95-4b73-8d87-d0d425fb8412.png" width=60% </p>

* Open the certificate in a text editor and edit the `remote` line to include the **Uri(s)** deployment reference and the **forwarded** `443` port.

<p align="center"><img src="https://user-images.githubusercontent.com/23629420/185332571-f3a67596-d09e-4c30-adcf-1b966ebaa728.png" width=60% </p>

* Save changes.

The certificate is ready to use, you can share it with family and friends. **There are no restrictions on simultaneous account use**.

### Setting up the OpenVPN client

To connect to VPN, I recommend using the **Open VPN** client, install the application for your OS ( [Windows](https://openvpn.net/client-connect-vpn-for-windows/), [Linux](https://openvpn.net/cloud-docs/openvpn-3-client-for-linux/), [MacOS](https://openvpn.net/client-connect-vpn-for-mac-os/), [Android ](https://play.google.com/store/apps/details?id=de.blinkt.openvpn&hl=ru&gl=US))

* On the `FILE` tab, import your certificate `VPN_on_Akash_Network.ovpn`

<p align="center"><img src="https://user-images.githubusercontent.com/23629420/185334726-01b043f9-9c73-4150-a1af-0ebc5bb0f6b1.png" width=30% </p>

* Set the **VPN name** as well as the **username** and **userpassword** you specified in `deploy.yml` earlier.

<p align="center"><img src="https://user-images.githubusercontent.com/23629420/185335333-707602b2-134a-46d4-96ed-ea3699570b41.png" width=60% </p>

* Check `Don't show again for this profile` and press `CONTINUE`

<p align="center"><img src="https://user-images.githubusercontent.com/23629420/185335693-050ea189-7571-4d2f-bcc2-ecf028e3f22c.png" width=30% </p>

**Connection successfully established!**

<p align="center"><img src="https://user-images.githubusercontent.com/23629420/185335861-013b392a-4eb9-44c5-a459-33186b406233.png" width=30% </p>

## Thank you for choosing Akash Network!

#### Инструкция на русском

> Данное решение VPN подходит под задачи широкого круга лиц и должно использоваться лишь для обеспечения доступа к заблокированным ресурсам в вашей стране. Тем не менее, **SoftEtherVPN** очень мощный инструмент с огромным количеством настроек, способный решить практически любую сетевую задачу. Посетите сайт [SoftEtherVPN](https://www.softether.org/)  для более детальной информации.

### Разворачиваем VPN Сервер

* Разверните с помощью **Cloudmos (Akashlytics)** [deploy.yml](https://github.com/Dimokus88/VPNAkash/blob/main/deploy.yml) сервера VPN , указав **имя пользователя** и **пароль**. ( [Инструкция по работе с Cloudmos(Akashlytics)](https://github.com/Dimokus88/guides/blob/main/Akashlytics/RU-guide.md)).

* Дождитесь завершения развертывания:

<p align="center"><img src="https://user-images.githubusercontent.com/23629420/185329065-31fc2117-dbf0-457b-91b1-86e4265da6fd.png" width=30% </p>


### Сертификат подключения

* Перейдите по ссылке из вкладки `Leases` и скачайте сертификат.

<p align="center"><img src="https://user-images.githubusercontent.com/23629420/185329937-bcf45a6f-5f95-4b73-8d87-d0d425fb8412.png" width=60% </p>

* Откройте сертификат в текстовом редакторе и внесите изменения в строке `remote`, указав **Uri(s)** ссылку на развертывание и **переадресованный** `443` порт.

<p align="center"><img src="https://user-images.githubusercontent.com/23629420/185332571-f3a67596-d09e-4c30-adcf-1b966ebaa728.png" width=60% </p>

* Сохраните изменения.

Сертификат готов для использования, можете поделиться им с семьей и друзьями. **Ограничений на одновременное использование учетной записью нет**.

### Настройка клиента OpenVPN

Для подключению к VPN рекомендую использовать склиент **Open VPN** , установите приложение для вашей ОС ( [Windows](https://openvpn.net/client-connect-vpn-for-windows/), [Linux](https://openvpn.net/cloud-docs/openvpn-3-client-for-linux/), [MacOS](https://openvpn.net/client-connect-vpn-for-mac-os/), [Android](https://play.google.com/store/apps/details?id=de.blinkt.openvpn&hl=ru&gl=US))

* На вкладке `FILE` импортируйте ваш сертификат `VPN_on_Akash_Network.ovpn`

<p align="center"><img src="https://user-images.githubusercontent.com/23629420/185334726-01b043f9-9c73-4150-a1af-0ebc5bb0f6b1.png" width=30% </p>

* Задайте **имя VPN**, а также укажите **имя пользователя** и **пароль пользователя**, которые вы указали в `deploy.yml` ранее.

<p align="center"><img src="https://user-images.githubusercontent.com/23629420/185335333-707602b2-134a-46d4-96ed-ea3699570b41.png" width=60% </p>

* Установите пункт `Don't show again for this profile` и нажмите `CONTINUE`

<p align="center"><img src="https://user-images.githubusercontent.com/23629420/185335693-050ea189-7571-4d2f-bcc2-ecf028e3f22c.png" width=30% </p>

**Подключение успешно установлено!**

<p align="center"><img src="https://user-images.githubusercontent.com/23629420/185335861-013b392a-4eb9-44c5-a459-33186b406233.png" width=30% </p>

## Спасибо что выбрали Akash Network!
