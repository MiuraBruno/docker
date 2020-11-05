#vendo todas as imagens do docker
docker images

#baixando images no docker 
docker pull ubuntu
docker pull ubuntu:16.04


#inicializar um container a partir de uma imagem 
docker run 

#visualiazar todos os container em execução
docker ps 

#visualizar todos os containers independente do estado  
docker ps -a


#hello world com docker 
docker run hello-world

#comando completo do run
docker run options image commmand args

#usando as opções complementares do comando 
docker run --rm -it ubuntu


#-it abre o terminal da imagem


#mais opções
docker run --name ubuntu -itd ubuntu:18.04
#da nome ubuntu a imagem 
#itd= roda iterativo em backgroud


#iniciar a imagem e rodar um comando no terminal desse container
docker run ubuntu whoami



#o que realmente eu faço com o comando docker run
#Criar um container a partir da imagem base Debian
docker run debian

#parar um container em execução
docker stop nome_container

#iniciar um container já existente
docker start nome_container

#hibernação de um container
docker pause nome_container

#reverso do pause
docker unpause nome_container

#remover o container 
####o ideal é dar um stop antes de remover o container
docker rm nome_container
docker rm -f nome_container

#remover todos os container que estão parados
####WARNING! This will remove all stopped containers.Are you sure you want to continue? [y/N]
docker container prune 


#remover imagens
docker rmi nome_imagem

#remover todas as imagens que estão inativas
docker images prune

#inspecionar um container 
####retorna um json com informações do container
docker inspect nome_container

#acessar informações do json
####pode se usar artifícios do shell script como grep
docker inspect --format='{{.Config.Image}}' test
docker inspect test | grep Image


#monitorar com log
docker log nome_container

#consumo dos containers em execução
####cpu, memory etc
docker stats

#informações gerais do docker
docker info

#verificar versão do docker
docker version  


#interação, abrir o terminal de um container ativo
docker attach nome_container

#executa comandos de um cotainer ativo
docker exec nome_container

#exportar o file system, exportar um container no seu estado atual
docker export vm_python

#compressão
docker export vm_python | gzip > export_container.tar.gz

#importar o container se torna uma imagem
#comando de descompactar aquivo e usar no comando seguinte
zcat export_container.tar.gz | docker import - export_novo

#utilizando o container "backup" sempre referenciar o bash no final
docker run -it --name container_importado export_novo bash

#importando uma imagem para tar
docker save export_novo | gzip -c > Imagem.tar.gz

#econtrando uma imagem no docker
docker search nome_imagem

#importando uma imagem do docker e criando um container tudo 
#a partir de uma imagem compactada
zcat CONTAINER.tar.gz | docker import - container_import
docker run -it --name container_importado container_import bash

#network
docker network inspect bridge

#persistência de dados
#ver tamanho de um container 
##em MB
docker ps -s

#mapear diretórios
##bind mount
###mapeamento entre host hospedeiro e o container 
###não escalável


docker run -itd --name apache -p 9090:80 -v /home/miura/site:/usr/local/apache2/htdocs httpd:2.4

