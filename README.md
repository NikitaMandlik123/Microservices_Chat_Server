# Microservices_Chat_Server
This Repository contains the code for the Mini Project2 for cloud computing.



# TASK 1 -> Building the Native:

1. Starting the VM instance cloudmpp1. 
2. Open the SSH. 
3. Run MongoDB correctly in the native case.

4. Command: sudo mongod --bind_ip=0.0.0.0 &
	

5. Run the web server correctly in the native case. 
6. Open another SSH simultaneously.

## The Flask app has started.

The live chat service can be accessed externally (using browsers). 
Now copy the ip address of the current VM and open it in the browser on port 8080.
ip address : 8080 


# TASK 2 -> Containerization

1. Starting the VM instance project2.
2. Open the SSH.
3. Run MongoDB correctly in the container case.
## Commands: 
cd miniproject2-container  
cd mongodb
docker rm mongodb:v1 //already created 
                         sudo make run
 
4. Run the web server correctly in the container case. 
cd webserver
sudo make run

## The live chat service can be accessed externally (using browsers)



# TASK 3 ->  Orchestration ( using Kubernetes) 


1. Starting the VM instance kubernetes.
2. Open the SSH.
3. Deploy the MongoDB object correctly in the miniKube case.
minikube start
alias kubectl="minikube kubectl --"
kubectl apply -f mongodb-deploy.yaml
kubectl get deployments


4. Deploy the mongoDB service correctly in the miniKube case. 
kubectl apply -f serviceDB .yaml

5. Deploy the web server object correctly in the miniKube case.
kubectl apply -f webserver-deploy.yaml
kubectl get deployments


6. Deploy the web server service object correctly in the miniKube case.

kubectl apply -f serviceWEB.yaml


7. The live chat service can be accessed externally (using browsers) 
kubectl port-forward --address 0.0.0.0 service/webserverservice 8080:8080
kubectl port-forward --address 0.0.0.0 service/webserverservice 8080:8080
kubectl port-forward --address 0.0.0.0 service/webserverservice 8080:8080
