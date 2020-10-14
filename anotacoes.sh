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