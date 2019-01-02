# Gerar os ambientes para desenvolvimento.
_VERSION := 0.2.3

all:
	@clear
	@echo ""
	@echo "  Ajuda "
	@echo ""
	@echo "  ‣ init: Copia o código do sistema para o diretório de desenvolvimento"
	@echo "  ‣ environment: Gera os arquivos de ambiente para distribuição somente"
	@echo "  ‣ up: Gera os arquivos de ambiente para distribuição e sobe o container"
	@echo "  ‣ update: Atualiza o código pelo git"
	@echo "  ‣ commit: Após finalizar um release ou hotfix, envia as atualizações para o repositório remoto."
	@echo ""

init:
	@echo "‣ Copiando o código do sistema"
	@git clone git@bitbucket.org:nogsantos/miamono-api-ruby.git src

environment:
	@echo "‣ Gerando os arquivos para distribuição"
	@./env/server.sh
	@./env/app.sh
	@./env/db.sh

up:
	@docker-compose up --build

update:
	@git pull
	@git checkout master
	@git pull
	@git pull --tags
	@git checkout develop

commit:
	@git push
	@git checkout master
	@git push
	@git push --tags
	@git checkout develop
