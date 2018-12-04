package main

import (
	"log"
	"net/http"
	"wsf/exam__devops__maximeGroff/handler"
)

func main() {

	myHandler := handler.NewHandler()

	server := &http.Server{
		Addr:    ":8080",
		Handler: myHandler,
	}

	log.Fatal(server.ListenAndServe())
}
