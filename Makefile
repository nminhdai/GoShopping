build:
	go build -o bin/main main.go

run:
	go run main.go

compile:
	GOOS=freebsd GOARSH=386 go build -o bin/main-freebsd-386 main.go
	GOOS=linux GOARSH=386 go build -o bin/main-linux-386 main.go
	GOOS=windows GOARSH=386 go build -o bin/main-windows-386 main.go

all: 
	GOOS=freebsd GOARSH=386 go build -o bin/main-freebsd-386 main.go
	GOOS=linux GOARSH=386 go build -o bin/main-linux-386 main.go
	GOOS=windows GOARSH=386 go build -o bin/main-windows-386 main.go
	

	docker-compose up -d
	go build -o bin/main main.go

	go run main.go