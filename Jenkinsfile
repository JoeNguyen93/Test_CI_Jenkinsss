pipeline {
  agent {
    docker {
      image 'node'
      args '-u root'
    }
  }

  stages {
    stage('Test') {
      steps {
        echo 'Test Stage'
        echo "${env.BRANCH_NAME}"
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploy stage'
        echo "${env.BRANCH_NAME}"
      }
    }
  }
}
