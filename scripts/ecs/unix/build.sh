ECR_REGISTRY="879381242838.dkr.ecr.us-east-1.amazonaws.com"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ECR_REGISTRY
docker build -t pettools .
docker tag pettools:latest $ECR_REGISTRY/pettools:latest
docker push $ECR_REGISTRY/pettools:latest
