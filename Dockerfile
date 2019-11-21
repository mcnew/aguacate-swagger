FROM tomcat:9-jdk8

ENV DIRECTORY_DATABASE=/var/lib/aguacate/database \
    DIRECTORY_SCRIPT=/var/lib/aguacate/script \
    DIRECTORY_CONFIGURATION=/var/lib/aguacate/configuration \
    DIRECTORY_SWAGGER=/var/lib/aguacate/swagger

RUN mkdir -p "$DIRECTORY_DATABASE" "$DIRECTORY_SCRIPT" "$DIRECTORY_CONFIGURATION" "$DIRECTORY_SWAGGER" \
 && rm -rf $CATALINA_HOME/webapps/*
RUN curl -sSL -o $CATALINA_HOME/webapps/ROOT.war https://repo1.maven.org/maven2/net/sf/aguacate/swagger/aguacate-swagger/0.1.0/aguacate-swagger-0.1.0.war \
 && echo "faa02dd4219123cd14966de7d37809c3d5484769  $CATALINA_HOME/webapps/ROOT.war" | sha1sum -c - \
 && mkdir "$CATALINA_HOME/webapps/ROOT" \
 && cd "$CATALINA_HOME/webapps/ROOT" \
 && unzip -q "$CATALINA_HOME/webapps/ROOT.war"\
 && rm "$CATALINA_HOME/webapps/ROOT.war"
