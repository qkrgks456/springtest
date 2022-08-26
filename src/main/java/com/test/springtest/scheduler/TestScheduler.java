package com.test.springtest.scheduler;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class TestScheduler {

    @Scheduled(cron = "*/30 * * * * *")
    public void test() {
        System.out.println("스케줄러 테스트");
    }
}
