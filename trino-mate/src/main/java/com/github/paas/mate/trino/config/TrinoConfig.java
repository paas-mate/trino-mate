package com.github.paas.mate.trino.config;

import com.github.paas.mate.trino.module.DeployType;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;

@Configuration
@Service
public class TrinoConfig {

    @Value("${DEPLOY_TYPE:STANDALONE}")
    public DeployType deployType;

}
