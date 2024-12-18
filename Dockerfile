FROM golang:alpine
WORKDIR /app
COPY go.* ./
RUN go mod download
COPY . .
RUN go build -o main main.go
EXPOSE 80
CMD [ "./main" ]