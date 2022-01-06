pipeline {
	environment {
		registry = "mrzhangn/jenkins-jave-mvn"
		registryCredential = 'znn'
		dockerImage = ''
		dockerRunCommand = 'docker run -itd --name jenkins-jave-mvn mrzhangn/jenkins-jave-mvn:$BUILD_NUMBER'
	}
	agent any
	stages {
	    stage("Building jar") {
            steps {
                script {
                    sh """
		        mvn -version
                        mvn -B -DskipTests clean package
                    """
                }
            }
        }
		stage("Building docker image") { 
			steps {
				script {
					sh """
						docker build -t $registry:$BUILD_NUMBER .
					"""
				}
			}
		}
		stage("docker run contain") { 
			steps {
				script {
					sh """
					 	 $dockerRunCommand
					  """
				}
			}
		}
	}
}
