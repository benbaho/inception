all: 
	@mkdir -p /home/bdurmus/data/wordpress
	@mkdir -p /home/bdurmus/data/mariadb	
	docker-compose -f srcs/docker-compose.yml up -d

re: clean all

clean:
	@docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\
	rm -rf /home/bdurmus/data/wordpress
	rm -rf /home/bdurmus/data/mariadb

.PHONY: all re clean
