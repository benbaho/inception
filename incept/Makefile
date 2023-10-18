
all: 
	@mkdir -p /home/data/wordpress
	@mkdir -p /home/data/mysql	
	docker-compose -f srcs/docker-compose.yml up -d


re: clean

	docker-compose -f srcs/docker-compose.yml up -d
clean:
	docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\
	rm -rf $(HOME)/data/wordpress
	rm -rf $(HOME)/data/mariadb


.PHONY:
