package com.szl.aspect;

import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * Created by zsc on 2017/7/20.
 */
@Component
@Aspect
public class Timing {
    private long before;
    private long after;
    @Pointcut("execution(* com.szl.service.MyService.getAllID(..))")
    public void foundFunction(){}

    @Before(value="foundFunction()")
    public void foundBefore(){
        System.out.println("before: " + (before = System.currentTimeMillis()));
    }

    @AfterReturning("foundFunction()")
    public void foundAfter(){
        System.out.println("after: " + (after = System.currentTimeMillis()));
        System.out.println("total time: " + (after - before));
    }
}
