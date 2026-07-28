package com.cognizant.springlearn.config;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormatDemo {

    public static void main(String[] args) {

        ApplicationContext context =
                new ClassPathXmlApplicationContext("date-format.xml");

        SimpleDateFormat sdf =
                (SimpleDateFormat) context.getBean("dateFormat");

        System.out.println("Today's Date : " + sdf.format(new Date()));

        ((ClassPathXmlApplicationContext) context).close();
    }
}