#! /bin/bash

echo "Installing serverless"
echo "_______________________________"

npm install -g serverless
npm install serverless-dynamodb-local serverless-offline serverless-stack-output

echo "Deploying to $env with codebuild src dir $CODEBUILD_SRC_DIR"
echo "_______________________________"
ls
serverless deploy --stage $env --package /artifacts/$env -v
