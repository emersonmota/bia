./build.sh
aws ecs update-service --cluster pettools-cluster --service service-pettools  --force-new-deployment