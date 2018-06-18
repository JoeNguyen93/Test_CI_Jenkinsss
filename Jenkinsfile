pipeline {
  agent {
    docker {
      image 'node'
      args '-u root'
    }
  }

  environment {
    GH_ACCESS_TOKEN = credentials('joenguyen93-gh-token')
  }

  stages {
    stage('Test') {
      when {
        changeRequest target: 'master'
      }
      steps {
        // echo 'Test Stage'
        // echo "Branch name: ${env.BRANCH_NAME}"
        // echo "Change id: ${env.CHANGE_ID}"
        // echo "Pull request: ${env.PULL_REQUEST}"
        // echo "Token: ${env.GH_ACCESS_TOKEN}"
        sh "make keke ${env.CHANGE_ID} ${env.GH_ACCESS_TOKEN}"
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
