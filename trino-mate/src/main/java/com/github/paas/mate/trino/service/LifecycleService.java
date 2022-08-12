package com.github.paas.mate.trino.service;

import com.github.shoothzj.javatool.util.ShellUtil;
import com.github.paas.mate.trino.config.TrinoConfig;
import com.github.paas.mate.trino.constant.PathConst;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;

@Slf4j
@Service
public class LifecycleService {

    @Autowired
    private TrinoConfig trinoConfig;

    @PostConstruct
    public void init() throws Exception {
        // start trino
        startTrino();
    }

    public void startTrino() throws Exception {
        switch (trinoConfig.deployType) {
            case STANDALONE:
                ShellUtil.executeCmd("bash -x " + PathConst.TRINO_START_STANDALONE_SCRIPT);
                break;
            default:
                break;
        }
    }

}
