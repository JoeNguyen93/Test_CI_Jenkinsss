pipeline {
  agent {
    docker {
      image 'node'
      args '-u root'
    }
  }

  stages {
    stage('Test') {
      when {
        changeRequest target: 'master'
      }
      steps {
        echo 'Test Stage'
        echo "${env.BRANCH_NAME}"
      }
    }

    stage('Deploy') {
      when {
        branch 'master'
      }
      steps {
        echo 'Deploy stage'
        echo "${env.BRANCH_NAME}"
      }
    }
  }
}
