FROM tomcat:8.5.75-jdk11-temurin
COPY build/libs/ImageTomcat-0.1-plain.war $CATALINA_HOME/webapps/ROOT.war

