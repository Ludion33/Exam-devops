package main

import (
	"log"
	"net/http"
	"os"
	"wsf/exam__devops__maximeGroff/handler"
)

func main() {

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}
	myHandler := handler.NewHandler()

	server := &http.Server{
		Addr:    ":" + port,
		Handler: myHandler,
	}

	log.Fatal(server.ListenAndServe())
}
