build-fe:
	cd ./frontend && npm run build
	cp -R ./frontend/build/* ./backend/pkg/embed/frontend/

build:
	cd backend && GOOS=linux GOARCH=amd64 go build -o console ./cmd/api/main.go
	mkdir -p docker
	cp ./backend/console ./docker
	cd ./docker && docker build . -t chris-palmer-deltatre/console