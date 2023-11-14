pipeline {
	agent none
	stages {
		stage('Integration UI Test') {
			parallel {
				stage('Deploy') {
					agent any
					steps {
						// sh './jenkins/scripts/deploy.sh'
						sh 'C:\Users\M3500QC\Desktop\Yr3Tri1\3103\jenkins-php-selenium-test\jenkins\scripts\deploy.sh'
						input message: 'Finished using the web site? (Click "Proceed" to continue)'
						// sh './jenkins/scripts/kill.sh'
						sh 'C:\Users\M3500QC\Desktop\Yr3Tri1\3103\jenkins-php-selenium-test\jenkins\scripts\kill.sh'
					}
				}
				stage('Headless Browser Test') {
					agent {
						docker {
							image 'maven:3-alpine' 
							args '-v /root/.m2:/root/.m2' 
						}
					}
					steps {
						sh 'mvn -B -DskipTests clean package'
						sh 'mvn test'
					}
					post {
						always {
							junit 'target/surefire-reports/*.xml'
						}
					}
				}
			}
		}
	}
}