kubectl -n=sit-la-actionablescience set image deployment apigateway-service apigateway-service=nexus.chubbdigital.com:8086/apigateway-service:v-52 --record

kubectl -n=sit-la-actionablescience set image deployment adminapi-service adminapi-service=nexus.chubbdigital.com:8086/adminapi-service:v-51 --record

kubectl -n=sit-la-actionablescience set image deployment tenant-service tenant-service=nexus.chubbdigital.com:8086/tenant-service:v-61 --record

kubectl -n=sit-la-actionablescience

--subscription na-gate08 -g sit-na-shared-web-aks-reg1-01 -n nae2saaksx0002

--subscription na-gate08 --group sit-na-shared-aks-reg1-01 --name nae2saaksx0003


PRod Clster

Web cluster
az aks get-credentials --subscription NA-Prod08 -g prod-na-shared-web-aks-reg1-01 -n nae2paaksx0008

kubectl config use-context nae2paaksx0008
kubectl -n prod-actionablescience get po -w

kubectl -n prod-actionablescience set image deployment/mainapp-ui mainapp-ui=nexus.chubbdigital.com:8086/mainapp-ui:PROD-DEC21
kubectl -n prod-actionablescience set image deployment/botapp-ui botapp-ui=nexus.chubbdigital.com:8086/botapp-ui:PROD-DEC21
kubectl -n prod-actionablescience set image deployment/botmanagementapp-ui botmanagementapp-ui=nexus.chubbdigital.com:8086/botmanagementapp-ui:PROD-DEC21
kubectl -n prod-actionablescience set image deployment/widgetui-channel widgetui-channel=nexus.chubbdigital.com:8086/widgetui-channel:PROD-DEC21
kubectl -n prod-actionablescience set image deployment/agentapp-ui agentapp-ui=nexus.chubbdigital.com:8086/agentapp-ui:PROD-DEC21

Prod APp Cluster
az aks get-credentials --subscription NA-Prod08 -g prod-na-shared-app-aks-reg1-01 -n nae2paaksx0007

kubectl config use-context nae2paaksx0007
kubectl -n prod-actionablescience get po -w
kubectl -n=prod-actionablescience set image deployment/tenant-service tenant-service=nexus.chubbdigital.com:8086/tenant-service:PROD-DEC21
kubectl -n=prod-actionablescience set image deployment/adminapi-service adminapi-service=nexus.chubbdigital.com:8086/adminapi-service:PROD-DEC21-1

kubectl -n=prod-actionablescience set image deployment/apigateway-service apigateway-service=nexus.chubbdigital.com:8086/apigateway-service:PROD-SEP21

kubectl -n=prod-actionablescience set image deployment/identity-service identity-service=nexus.chubbdigital.com:8086/identity-service:v-201


kubectl -n=prod-actionablescience delete po adminapi-service-5b58cf9d8f-pst9d
kubectl -n=prod-actionablescience delete po tenant-service-5569f54d7b-9fhhc


UAT Cluster

Web Cluster
az aks get-credentials --subscription NA-gate08 -g uat-na-shared-web-aks-reg1-01 -n nae2uaaksx0007

kubectl config use-context nae2uaaksx0007
kubectl -n uat-actionablescience get po 

APP Cluster
az aks get-credentials --subscription NA-gate08 -g uat-na-shared-app-aks-reg1-01 -n nae2uaaksx0005
kubectl config use-context nae2uaaksx0005
kubectl -n uat-actionablescience get po -w

kubectl -n=sit-la-actionablescience set image deployment/mainapp-ui mainapp-ui=nexus.chubbdigital.com:8086/mainapp-ui:sit-jun21
kubectl -n=sit-la-actionablescience set image deployment/botapp-ui botapp-ui=nexus.chubbdigital.com:8086/botapp-ui:sit-jun21
kubectl -n=sit-la-actionablescience set image deployment/botmanagementapp-ui botmanagementapp-ui=nexus.chubbdigital.com:8086/botmanagementapp-ui:sit-jun21
kubectl -n=sit-la-actionablescience set image deployment/widgetui-channel widgetui-channel=nexus.chubbdigital.com:8086/widgetui-channel:sit-jun21
kubectl -n=sit-la-actionablescience set image deployment/agentapp-ui agentapp-ui=nexus.chubbdigital.com:8086/agentapp-ui:sit-jun21




####

SIT Cluster

UI AKS
az aks get-credentials --subscription na-gate08 -g sit-na-shared-web-aks-reg1-01 -n nae2saaksx0002
kubectl config use-context nae2saaksx0002
kubectl -n sit-la-actionablescience get po -w 
kubectl -n=sit-la-actionablescience get ingress 

kubectl -n=sit-la-actionablescience edit deploy agentapp-ui
kubectl -n=sit-la-actionablescience edit deploy agentapp-ui

## deployment
kubectl -n=sit-la-actionablescience set image deployment/mainapp-ui mainapp-ui=nexus.chubbdigital.com:8086/mainapp-ui:sit-jun21
kubectl -n=sit-la-actionablescience set image deployment/botapp-ui botapp-ui=nexus.chubbdigital.com:8086/botapp-ui:sit-jun21
kubectl -n=sit-la-actionablescience set image deployment/botmanagementapp-ui botmanagementapp-ui=nexus.chubbdigital.com:8086/botmanagementapp-ui:sit-jun21
kubectl -n=sit-la-actionablescience set image deployment/widgetui-channel widgetui-channel=nexus.chubbdigital.com:8086/widgetui-channel:sit-jun21
kubectl -n=sit-la-actionablescience set image deployment/agentapp-ui agentapp-ui=nexus.chubbdigital.com:8086/agentapp-ui:sit-jun21



kubectl -n sit-la-actionablescience set image deployment/mainapp-ui mainapp-ui=nexus.chubbdigital.com:8086/mainapp-ui:SIT-SEP21
kubectl -n sit-la-actionablescience  set image deployment/botapp-ui botapp-ui=nexus.chubbdigital.com:8086/botapp-ui:SIT-SEP21
kubectl -n sit-la-actionablescience  set image deployment/botmanagementapp-ui botmanagementapp-ui=nexus.chubbdigital.com:8086/botmanagementapp-ui:SIT-SEP21
kubectl -n sit-la-actionablescience  set image deployment/widgetui-channel widgetui-channel=nexus.chubbdigital.com:8086/widgetui-channel:SIT-SEP21
kubectl -n sit-la-actionablescience  set image deployment/agentapp-ui agentapp-ui=nexus.chubbdigital.com:8086/agentapp-ui:SIT-SEP21


kubectl -n sit-la-actionablescience get deployment agentapp-ui -o yaml > adminapi-sit-ingress.yaml



SIT API AKS
az aks get-credentials --subscription na-gate08 -g sit-na-shared-aks-reg1-01 -n nae2saaksx0003

kubectl config use-context nae2saaksx0003
kubectl -n sit-la-actionablescience get po -w
kubectl -n sit-la-actionablescience get ingress adminapi-service -o yaml > adminapi-sit-ingress.yaml
kubectl -n sit-la-actionablescience get configmap adminapi-service -o yaml

kubectl -n sit-la-actionablescience set image deployment/identity-service identity-service=nexus.chubbdigital.com:8086/identity-service:v-201

federation-sts-sit-asc-agent.chubbdigital.com 

## deployment
kubectl -n sit-la-actionablescience set image deployment/adminapi-service adminapi-service=nexus.chubbdigital.com:8086/adminapi-service:sit-jun21
kubectl -n=sit-la-actionablescience set image deployment/tenant-service tenant-service=nexus.chubbdigital.com:8086/tenant-service:sit-jun21

kubectl -n=sit-la-actionablescience set image deployment/apigateway-service apigateway-service=nexus.chubbdigital.com:8086/apigateway-service:sit-may21
kubectl -n=sit-la-actionablescience set image deployment/tenant-service tenant-service=nexus.chubbdigital.com:8086/tenant-service:v-202





kubectl config set-context --current -n=sit-la-actionablescience

az aks get-credentials --subscription na-gate08 -g sit-na-shared-aks-reg1-01 -n nae2saaksx0003 --overwrite-existing


kubectl -n chubb create secret tls actionable-science-apps-wilcard-tls --key privkey1.pem --cert fullchain1.pem


kubectl set image deployment/botmanagementapp-ui botmanagementapp-ui=nexus.chubbdigital.com:8086/botmanagementapp-ui:v-20 -n sit-la-actionablescience

kubectl set image deployment/botapp-ui botapp-ui=nexus.chubbdigital.com:8086/botapp-ui:v-20 -n sit-la-actionablescience

kubectl set image deployment/widgetui-channel widgetui-channel=nexus.chubbdigital.com:8086/widgetui-channel:v-20 -n sit-la-actionablescience


curl -v -X POST "https://digitallatam-apis-uat.chubb.com/communications/api/v1/message/callback" -H "Content-Type: application/x-www-form-urlencoded" -H "Ocp-Apim-Subscription-Key: 3ea5e05fe7a04524863e74ee5dada56c" --data-ascii "Test" 


kubectl -n=sit-la-actionablescience set image deployment botmanagementapp-ui botmanagementapp-ui=nexus.chubbdigital.com:8086/botmanagementapp-ui:latest --record

kubectl -n test set image deployment mainapp-ui mainapp-ui=actionablescience.azurecr.io/mainapp-ui:77-test--master--adf8659

kubectl -n test set image deployment botapp-ui botapp-ui=actionablescience.azurecr.io/botapp-ui:77-test--master--26e98da

kubectl -n test set image deployment botmanagementapp-ui botmanagementapp-ui=actionablescience.azurecr.io/botmanagementapp-ui:77-test--IK-74--567a6b4

kubectl -n uat-actionablescience get po 
kubectl rollout restart  deployment/adminapi-service -n uat-actionablescience 
kubectl rollout restart  deployment/adminapi-service -n sit-la-actionablescience 
kubectl rollout restart  deployment/apigateway-service -n sit-la-actionablescience
kubectl rollout restart  deployment/tenant-service -n sit-la-actionablescience
kubectl rollout restart  deployment/identity-service -n sit-la-actionablescience

kubectl -n prod-actionablescience rollout restart  deployment/adminapi-service

kubectl rollout restart  deployment/adminapi-service -n prod-actionablescience
kubectl rollout restart  deployment/tenant-service -n prod-actionablescience

actionablescience.azurecr.io/tenant-service:77-test--master--89ee4b5



kubectl set image deployment/bpmapi-service bpmapi-service=actionablescience.azurecr.io/bpmapi-service:7-dev--master--e6bb93a -n test

kubectl -n=prod-actionablescience set image deployment/agentapp-ui agentapp-ui=nexus.chubbdigital.com:8086/agentapp-ui:v-310


kubectl -n test set image deployment/adminapi-service adminapi-service=actionablescience.azurecr.io/adminapi-service:uat--master--98524a1

kubectl rollout restart -n uat deployment/apigateway-service

kubectl rollout restart  deployment/adminapi-service -n kube-system 


kubectl -n uat set image deployment/apigateway-service apigateway-service=actionablescience.azurecr.io/apigateway-service:restore-master--master--2f7b114

kubectl -n dev set image deployment/apigateway-service apigateway-service=actionablescience.azurecr.io/apigateway-service:senthil--chubb-master--7df8b1a


kubectl -n uat set image deployment/adminapi-service adminapi-service=actionablescience.azurecr.io/adminapi-service:senthil-dev--chubb-master-1--58eea97

kubectl -n uat set image deployment/apigateway-service apigateway-service=actionablescience.azurecr.io/apigateway-service:senthil--chubb-master-1--6bd4fb9

kubectl -n uat set image deployment/tenant-service tenant-service=actionablescience.azurecr.io/tenant-service:senthil-dev--chubb-master-1--79e9547


Old UAT 
adminapi-service:uat--master--98524a1
apigateway-service:restore-master--master--2f7b114
tenant-service:dev--master--ad976b0


kubectl -n uat set image deployment/adminapi-service adminapi-service=actionablescience.azurecr.io/adminapi-service:uat--master--98524a1

kubectl -n uat set image deployment/apigateway-service apigateway-service=actionablescience.azurecr.io/apigateway-service:restore-master--master--2f7b114

kubectl -n dev set image deployment/tenant-service tenant-service=actionablescience.azurecr.io/tenant-service:dev--master--ad976b0

kubectl rollout restart  ds/fluentd-elasticsearch-new -n kube-system

kubectl -n test set image deployment/botmanagementapp-ui botmanagementapp-ui=actionablescience.azurecr.io/botmanagementapp-ui:1022-restore-test--master--97380b2

kubectl -n test set image deployment/apigateway-service apigateway-service=actionablescience.azurecr.io/apigateway-service:senthil--chubb-master-1--66591ae

kubectl -n test set image deployment/identity-service identity-service=actionablescience.azurecr.io/identity-service:senthil--test-log--8297370


kubectl -n uat set image deployment/agentapp-ui agentapp-ui=actionablescience.azurecr.io/agentapp-ui:160-null-uat--master--c2e7a32


docker pull actionablescience.azurecr.io/agentapp-ui:160-null-uat--master--c2e7a32
kubectl -n uat set image deployment/agentapp-ui agentapp-ui=actionablescience.azurecr.io/agentapp-ui:154-null-uat--master--50fbe0b


kubectl -n uat set image deployment/adminapi-service adminapi-service=actionablescience.azurecr.io/adminapi-service:163-dev--master--a8fc5c2

kubectl -n uat set image deployment/apigateway-service apigateway-service=actionablescience.azurecr.io/apigateway-service:Rahul--PK-1956--5ada7c3
docker pull actionablescience.azurecr.io/apigateway-service:Rahul--PK-1956--5ada7c3

kubectl -n uat set image deployment/adminapi-service adminapi-service=actionablescience.azurecr.io/adminapi-service:163-dev--master--a8fc5c2
