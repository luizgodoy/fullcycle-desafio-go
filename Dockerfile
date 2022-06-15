FROM golang AS builder
WORKDIR /
COPY . .
RUN go build hello.go

FROM scratch
WORKDIR /app
COPY --from=builder hello .
CMD ["./hello"]
