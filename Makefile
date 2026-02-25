# Dependency installation
deps: .install-deps

# Generation
gen: .buflint .bufgen .tidy


# Установка зависимостей
.install-deps:
	go install tool
	buf dep update

# Линт протофайлов
.buflint:
	@buf lint

# Генерация протофайлов
.bufgen:
	@buf generate

.tidy:
	@go mod tidy
