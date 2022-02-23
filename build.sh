# build image microservices-eurikaserver from Docker file and push to docker hub

mvn clean install

docker build -f Dockerfile -t azizzakiryarov/microservices-eurikaserver:latest .

docker push azizzakiryarov/microservices-eurikaserver:latest

kubectl delete statefulset.apps/microservices-eurikaserver-statefulset service/eurikaserver

kubectl apply -f /Users/azizzakiryarov/IdeaProjects/microservices-eurikaserver/k8s/base/microservices-eurikaserver/statefulset.yaml

kubectl apply -f /Users/azizzakiryarov/IdeaProjects/microservices-eurikaserver/k8s/base/microservices-eurikaserver/service.yaml