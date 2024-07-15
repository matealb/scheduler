.PHONY: all clean logs

all:
	docker compose up -d
	docker build -t localhost:5000/potato:latest ./potato
	docker push localhost:5000/potato:latest
	kubectl apply -f k8s.yaml

clean:
	kubectl delete -f k8s.yaml
	docker compose down
	docker rmi localhost:5000/potato:latest

logs:
	kubectl logs -l app=potato --all-containers --namespace potato-local
