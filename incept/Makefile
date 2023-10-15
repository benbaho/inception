
all: 
	@mkdir -p /home/data/wordpress
	@mkdir -p /home/data/mysql	
	docker-compose -f srcs/docker-compose.yml up


re:

	docker rmi -f srcs_maria-test
	docker rmi -f srcs_wordpress
	docker-compose -f srcs/docker-compose.yml up
clean:


.PHONY:
