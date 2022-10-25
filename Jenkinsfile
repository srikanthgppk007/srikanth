node{
   def tomcatWeb = 'C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0_bittu\\webapps'
   def tomcatBin = 'C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0_bittu\\bin'
   def tomcatStatus = ' '
    stage('SCM checkout'){
          git'https://github.com/srikanthgppk007/srikanth.git'  
    }
    stage('Compile-Package-create-War-file'){
     //git maven home path
   def mvnHome = tool name: 'Maven', type:'maven'
   bat "${mvnHome}\\bin\\mvn package"
}
   stage('Deploy to tomcat'){
   bat "copy target\\artifactid.war \"${tomcatWeb}\\artifactid.war \" "
}
  stage('start Tomcat Server'){
  Sleep(time:5,unit:"SECONDS")
  bat "${tomcatBin}\\Startup.bat"
  sleep(time:100,unit:"SECONDS")
}
}
