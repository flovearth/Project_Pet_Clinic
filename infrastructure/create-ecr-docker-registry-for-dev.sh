PATH="$PATH:/usr/local/bin"
APP_REPO_NAME="feyz-repo/petclinic-app-dev"
AWS_REGION="eu-west-2"

aws ecr create-repository \
  --repository-name ${APP_REPO_NAME} \
  --image-scanning-configuration scanOnPush=false \
  --image-tag-mutability MUTABLE \
  --region ${AWS_REGION}
