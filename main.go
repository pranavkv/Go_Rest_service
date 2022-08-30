package main

import (
	"context"
	"os"
	"net/http"
	"time"
	"os/signal"
	handler "github.com/pranavkv/golib_v1/BaseHandler"
	utils "github.com/pranavkv/golib_v1/LibUtils"
	data "github.com/pranavkv/golib_v1/LibData"
	"github.com/prometheus/client_golang/prometheus/promhttp"
)

func loginHandler(w http.ResponseWriter, r *http.Request) (data.GoLibResponse, error) {

	req,res,err:= handler.ProcessRequest(w,r)
	if(err != nil) {
		utils.Logger.Errorf("An error accured: ", err)
      return res,err
	}
	  
	utils.Logger.Infof("Request Receievd: %v", req)
	return res,nil

}

func main() {

	hostname, _ := os.Hostname()

	utils.InitLog("login-service", hostname)
	sm := http.NewServeMux()
	sm.Handle("/login", handler.RootHandler(loginHandler))
	sm.Handle("/metrics" , promhttp.Handler())

	s := &http.Server{
		Addr:         ":9091",
		Handler:      sm,
		IdleTimeout:  120 * time.Second,
		ReadTimeout:  1 * time.Second,
		WriteTimeout: 1 * time.Second,
	}

	go func() {
		err := s.ListenAndServe()
		if err != nil {
			utils.Logger.Error(err)
		}
	}()

	// make a new channel to notify on os interrupt of server (ctrl + C)
	sigChan := make(chan os.Signal)
	signal.Notify(sigChan, os.Interrupt)
	signal.Notify(sigChan, os.Kill)

	// This blocks the code until the channel receives some message
	sig := <-sigChan
	utils.Logger.Infof("Received terminate, graceful shutdown ", sig)
	tc, cancel := context.WithTimeout(context.Background(), 30*time.Second)
	defer cancel()
	s.Shutdown(tc)
}