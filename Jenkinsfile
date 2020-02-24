node {
           stage('Git Clone') {
            checkout scm
    	        }
    	   stage('Build Docker image') {
                    // Docker build
		docker.image('my-custom-image')
                }
}
