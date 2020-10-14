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


