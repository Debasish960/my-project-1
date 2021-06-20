# my-project-1
This is a simple CICD project by using Jenkins, Maven, Docker, Nexus and Sonarqube.
Launch 2 EC2 Instances (t2.micro and t3a.medium)
************
On t2.micro:-
Install GIT:- yum install git -y
	git clone https://github.com/Debasish960/my-project-1.git

Install JAVA:- yum install java-1.8.0-openjdk-devel -y
--------------
Install Maven:-
	mkdir /opt/maven && cd /opt/maven
	wget https://downloads.apache.org/maven/maven-3/3.8.1/binaries/apache-maven-3.8.1-bin.tar.gz
	tar -xvf apache-maven-3.8.1-bin.tar.gz
	vi /etc/profile.d/maven.sh

	export M2_HOME=/opt/maven/apache-maven-3.8.1
	export PATH=${M2_HOME}/bin:${PATH}
	mvn -version
----------------
Install JENKINS:-
	yum -y install wget
	wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
	rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
	yum -y install jenkins

	Start Jenkins
	# Start jenkins service
	systemctl start jenkins

	# Setup Jenkins to start at boot,
	systemctl enable jenkins

	Accessing Jenkins
	By default jenkins runs at port 8080, You can access jenkins at

	http://YOUR-SERVER-PUBLIC-IP:8080
-----------------
Install DOCKER:-
	yum install docker -y
	usermod -aG docker jenkins
	usermod -aG docker ec2-user
	service jenkins restart
******************
On t3a.medium:-
	Install JAVA:- yum install java-11* -y
	Install DOCKER:-
	yum install docker -y
	usermod -aG docker ec2-user
	docker run -d -p 8081:8081 -p 8082:8082 -p 8085:8085 --name nexus sonatype/nexus:oss
	docker run -d -p 9000:9000 --name sonar sonarqube

	Accessing Nexus
	Nexus runs at port 8081, You can access Nexus at 

	http://YOUR-SERVER-PUBLIC-IP:8081/nexus

	Accessing SonarQube
	Nexus runs at port 9000, You can access Nexus at 

	http://YOUR-SERVER-PUBLIC-IP:9000
********************
