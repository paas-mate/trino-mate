FROM ttbb/compile:jdk11-git-mvn AS build
COPY . /opt/sh/compile
WORKDIR /opt/sh/compile
RUN mvn -B clean package


FROM ttbb/trino:nake

COPY --from=build /opt/sh/compile/trino-mate/target/trino-mate-0.0.1.jar /opt/sh/trino/mate/trino-mate.jar

COPY docker-build /opt/sh/trino/mate

WORKDIR /opt/sh/trino

CMD ["/usr/bin/dumb-init", "bash", "-vx","/opt/sh/trino/mate/scripts/start.sh"]