#!make

help: _header
	${info }
	@echo Opciones:
	@echo ----------------------
	@echo start / stop / restart
	@echo clean
	@echo ----------------------

_header:
	@echo ------
	@echo Prueba
	@echo ------

_urls: _header
	${info }
	@echo Sitios disponibles:
	@echo ----------------------------
	@echo [Prueba] http://prueba.test
	@echo ----------------------------

_start-command:
	@docker compose up -d --remove-orphans nginx

start: _start-command _urls

stop:
	@docker compose stop

restart: stop start

clean:
	@docker compose down -v --remove-orphans
