FROM tomcat:9-jdk8

ENV DIRECTORY_DATABASE=/var/lib/aguacate/database \
    DIRECTORY_SCRIPT=/var/lib/aguacate/script \
    DIRECTORY_CONFIGURATION=/var/lib/aguacate/configuration \
    DIRECTORY_SWAGGER=/var/lib/aguacate/swagger

RUN mkdir -p "$DIRECTORY_DATABASE" "$DIRECTORY_SCRIPT" "$DIRECTORY_CONFIGURATION" "$DIRECTORY_SWAGGER" \
 && rm -rf $CATALINA_HOME/webapps/*
RUN curl -sSL -o $CATALINA_HOME/webapps/ROOT.war https://repo1.maven.org/maven2/net/sf/aguacate/swagger/aguacate-swagger/0.1.1/aguacate-swagger-0.1.1.war \
 && echo "e47c508f9cd13c5025be99b9a55b727723474647  $CATALINA_HOME/webapps/ROOT.war" | sha1sum -c - \
 && mkdir "$CATALINA_HOME/webapps/ROOT" \
 && cd "$CATALINA_HOME/webapps/ROOT" \
 && unzip -q "$CATALINA_HOME/webapps/ROOT.war"\
 && rm "$CATALINA_HOME/webapps/ROOT.war"
