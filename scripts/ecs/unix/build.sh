ECR_REGISTRY="SEU_REGISTRY"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ECR_REGISTRY
docker build -t obicho .
docker tag pet-tools-obicho:latest $ECR_REGISTRY/pet-tools-obicho:latest
docker push $ECR_REGISTRY/pet-tools-obicho:latest
