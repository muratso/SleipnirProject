#/bin/bash
apt-get install ansible -y
ansible-playbook -i ./ansible/playbook/hosts ./ansible/playbook/playbook.yml
docker build -t="sleipnir/automated" ./docker/testsuite
docker build -t="sleipnir/jenkins" ./docker/jenkins

docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd)/docker/jenkins/dockerutil/jenkinsconfig:/var/jenkins_home -p 8080:8080 sleipnir/jenkins

