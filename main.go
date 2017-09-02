package main

import (
	"fmt"
	"log"
	"net/http"
	"os"

	"github.com/cloudfoundry-community/go-cfenv"
)

// IndexHandler returns a simple message
func IndexHandler(w http.ResponseWriter, r *http.Request) {
	appEnv, _ := cfenv.Current()
	fmt.Fprintf(w, "Congratulations!\n\n")
	fmt.Fprintf(w, "AppID:"+appEnv.AppID+"\n")
	fmt.Fprintf(w, "AppName:"+appEnv.Name+"\n")
	fmt.Fprintf(w, "Home:"+appEnv.Home+"\n")
	fmt.Fprintf(w, "MemoryLimit:"+appEnv.MemoryLimit+"\n")
	fmt.Fprintf(w, "SpaceName:"+appEnv.SpaceName+"\n\n")

	if rmqhost, ok := appEnv.Services["rabbitmq-36"][0].Credentials["hostname"].(string); ok {
		fmt.Fprintf(w, "rmqhost="+rmqhost+"\n")
	}
	if rmquser, ok := appEnv.Services["rabbitmq-36"][0].Credentials["username"].(string); ok {
		fmt.Fprintf(w, "rmquser="+rmquser+"\n")
	}
	//if rmqpassword, ok := appEnv.Services["rabbitmq-36"][0].Credentials["password"].(string); ok {
	//	fmt.Fprintf(w, "rmqpassword="+rmqpassword+"\n")
	//}
	//if rmquri, ok := appEnv.Services["rabbitmq-36"][0].Credentials["uri"].(string); ok {
	//	fmt.Fprintf(w, "rmquri="+rmquri+"\n\n")
	//}

	if redishost, ok := appEnv.Services["redis-20"][0].Credentials["host"].(string); ok {
		fmt.Fprintf(w, "redishost="+redishost+"\n")
	}
	//if redispassword, ok := appEnv.Services["redis-20"][0].Credentials["password"].(string); ok {
	//	fmt.Fprintf(w, "redispassword="+redispassword+"\n")
	//}
	if redisport, ok := appEnv.Services["redis-20"][0].Credentials["port"].(float64); ok {
		fmt.Fprintf(w, "redisport=%.0f \n\n", redisport)
	}
	/**
	for key, value := range appEnv.Services {
		fmt.Fprintf(w, "<"+key+">%+v", value)
		fmt.Fprintf(w, "\n\n")
	}
	**/
}

func main() {
	http.HandleFunc("/", IndexHandler)
	var port string
	if port = os.Getenv("PORT"); len(port) == 0 {
		port = "8080"
	}
	log.Fatal(http.ListenAndServe(":"+port, nil))
}
