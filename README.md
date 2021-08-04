#### 08.03_work_with_roles </br>
====================================</br>
Для выполнения playbook дистрибутивы сохранить в папки files соответсвующих папок ролей. Выставить значения версий в - vars/main.yml </br>
Загрузить контейнеры - `docker pull centos:latest, и ubuntu:latest` </br>
Запуск контейнеров для изменения - `docker run -d --name container_name distr:latest sleep 1000000` </br> 
В контейнеры перед работой с ansible поставить sudo и python, зайдя в консоль - `docker exec -it ubuntu /bin/bash`</br>
Закоментировать изменения в контейнерах - `docker commit -p container_name distr_name:ver1`</br>
Роли работают только из дистрибутивов kibana, elastic расположенных в локальных папках ролей - files </br>
Для удобства копирования дистрибутивов имеется скрипт - copy_distr.sh, выполнять после установки ролей </br>
Переменные использоны 2, - dist_version и dist_home, разнёс их в папки - default и vars, в папках ролей</br>
Роли ставяться из git в папку roles, команда установки - `ansible-galaxy install -r requirements.yml -p roles/`</br>
Выполнение playbook - `ansible-playbook site.yml -i inventory/prod.yml`</br>
После выполнения playbook сервисы доступны в  браузере на - 9200 и 5601 </br>

Роль для elastic:  [elastic-role](https://github.com/murzinvit/elastic-role.git) </br>
    
Роль для kibana:  [kibana-role](https://github.com/murzinvit/kibana-role.git) </br>
   
![screen](https://github.com/murzinvit/screen/blob/main/VirtualBox_ubuntu_64_02_08_2021_14_54_29.png) </br>
