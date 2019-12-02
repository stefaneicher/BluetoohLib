pipeline {
    agent { docker { image 'ruby:2.6.1' } }

    stages {
        stage('Build') {
            steps {
                sh 'build'
            }
        }
        stage('Build Solution') {
            agent {
                docker {
                    image 'conanio/gcc63'
//                     args 'run -i -v/Users/stefaneicher/.conan:/home/conan/.conan -v "$(pwd)":/buildFolder:ro conanio/clang9 bash -c -c "cd /buildFolder && ls -l && ./create.sh"'
//                     args '-v ${PWD}:/usr/src/app -w /usr/src/app'
                    reuseNode true
                }
            }
            steps {
                sh 'npm install'
            }
            }
        stage('Deploy') {
            steps {
                echo 'todo to artifactory Deploying....'
            }
        }
    }
}
pip