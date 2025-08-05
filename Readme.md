GUVI DEVEOPS MIN PROJECT 1
Application Deployment
(Deploy the given React application to a production ready state)
Source:https://github.com/Vennilavan12/Brain-Tasks-App.git
Clone the below mentioned repository and deploy the application (Run application in port 3000).

Techstacks Needs
GITHUB 
AWS EC2
AWS CLI
DOCKER
AWS ECR
AWS EKS
AWS CODEBUILD
AWS CODEDEPLOY
AWS CODEPIPELINE
AWS CLOUDWATCH


Step_1:

1.1 Launch an EC2 Instance with Required Specificaion

1.2 Install AWS CLI & configure it with Access Key

    sudo yum install -y unzip curl
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    aws --version
    aws configure

1.3 Install Docker

    sudo yum install -y docker
    sudo service docker start
    sudo docekr --version

1.4 Install Kubernetes

    Install kubectl

    curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.33.0/2025-05-01/bin/linux/amd64/kubectl
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
    kubectl version --client

    Install eksctl

    curl -LO "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_Linux_amd64.tar.gz"
    tar -xzf eksctl_Linux_amd64.tar.gz
    sudo mv eksctl /usr/local/bin
    eksctl version

1.4 Install AWS IAM Authenticator

    curl -Lo aws-iam-authenticator https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.6.14/aws-iam-authenticator_0.6.14_linux_amd64
    chmod +x ./aws-iam-authenticator
    sudo mv ./aws-iam-authenticator /usr/local/bin
    aws-iam-authenticator version

Step_2:

    Create ECR

Step_3:

    sudo yum install git -y
    git --version
    Clone Git Rep https://github.com/Vennilavan12/Brain-Tasks-App.git to local EC2

Step_4:

    Create Docekrfile
    Create Image with the Dockerfile Build and check it 

Step_5:

    Create deployment.yml
    Create service.yml
    Create EKS Cluster and verify it

Step_6:

    Create buildspec.yml
    Create CodeBuild
    Source GitHub
    Environment Amazon Linux

Setp_7:

    Create appspec.yml
    Create CodeDeploy
    Create Code Deployment Group
    Create Create Deployment
    Instal CodeDeploy Agent at EC2
