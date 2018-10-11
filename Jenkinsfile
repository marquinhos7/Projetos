pipeline {
    agent {
        docker {
            image 'ruby',
            args '--link selenium_server'
        }
    }
    stages {
        stage('Preparação') {
            steps {
                sh "bundle install"
            }
        }
        stage('RunTests') {
            steps {
                sh "bundle exec cucumber -p ci -t @logar"
            }
        }
    }
}