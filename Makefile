.PHONY: install backend frontend frontend-build docker-up docker-down docker-build

install:
	pip install -r requirements.txt
	cd frontend && npm install

backend:
	uvicorn backend.main:app --reload

frontend:
	cd frontend && npm run dev

frontend-build:
	cd frontend && npm run build

docker-build:
	docker compose build

docker-up:
	docker compose up --build -d

docker-down:
	docker compose down
