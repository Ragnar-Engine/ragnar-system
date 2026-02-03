.PHONY: lint test build docker-build docker-up docker-down proto-gen help

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

lint: ## Run golangci-lint
	golangci-lint run ./...

test: ## Run tests
	go test ./... -v -cover

build: ## Build all services
	go build -o bin/gateway ./cmd/gateway
	go build -o bin/ingest ./cmd/ingest
	go build -o bin/embed ./cmd/embed
	go build -o bin/query ./cmd/query
	go build -o bin/llm ./cmd/llm
	go build -o bin/vectorstore ./cmd/vectorstore

docker-build: ## Build Docker images
	docker-compose build

docker-up: ## Start all services
	docker-compose up -d

docker-down: ## Stop all services
	docker-compose down

proto-gen: ## Generate Go code from proto files
	protoc --go_out=. --go-grpc_out=. api/proto/*.proto
