#### 08.03_work_with_roles </br>
====================================</br>
Загрузить контейнеры - `docker pull distr:latest` </br>
Запуск контейнеров для изменения - `docker run -d --name container_name distr:latest sleep 10000000` </br> 
В контейнеры перед работой с ansible поставить sudo и python, зайдя в консоль - `docker exec -it ubuntu /bin/bash`</br>
Закоментировать изменения в контейнерах - `docker commit -p container_name distr:ver1`</br>
Роли работают только из дистрибутивов kibana, elastic расположенных в локальных папках ролей - files </br>
Переменные использовал 2, - dist_version и dist_home, разнёс их в папки - default и vars, в папках ролей</br>
Роли ставяться из git в папку roles, команда установки - `ansible-galaxy install -r requirements.yml -p roles/`</br>
Выполнение playbook - `ansible-playbook site.yml -i inventory/prod.yml`</br>

Роль для elastic:  [elastic-role](https://github.com/murzinvit/elastic-role.git) </br>
    
Роль для kibana:  [kibana-role](https://github.com/murzinvit/kibana-role.git) </br>
   
![screen](https://github.com/murzinvit/08.03_work_with_roles/blob/0dcd72099edaa0a4ec1abb2d4df67a62af9ac0be/1.png)
