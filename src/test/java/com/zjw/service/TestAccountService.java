package com.zjw.service;

import com.zjw.domain.Account;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * 测试AccountService
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class TestAccountService {

    @Resource(name = "accountService")
    private AccountService accountService;

    /**
     * 测试是否可以查询到数据
     *
     * 通过
     */
    @Test
    public void testFindAll(){
        List<Account> accountList = accountService.findAll();
        for (Account account : accountList) {
            System.out.println(account);
        }
    }

    /**
     * 一、测试保存数据，是否返回id,数据库是否有数据。
     * 通过，返回了id
     *
     * 二、测试事务
     * 通过
     */
    @Test
    public void testSaveAccount(){
        Account account = new Account();
        account.setName("张44");
        account.setMoney(99.99);
        accountService.saveAccount(account);
        System.out.println(account);
    }

}