# study_springboot-helloword  v1.0

#### 介绍
学习日志：springboot入门
编写helloword

## 1、Spring Boot 简介

> 简化Spring应用开发的一个框架；
>
> 整个Spring技术栈的一个大整合；
>
> J2EE开发的一站式解决方案；

## 2、微服务


微服务：架构风格（服务微化）

一个应用应该是一组小型服务；可以通过HTTP的方式进行互通；

单体应用：ALL IN ONE

微服务：每一个功能元素最终都是一个可独立替换和独立升级的软件单元；




## 3、开发环境



–jdk1.8：Spring Boot 推荐jdk1.7及以上；java version "1.8.0_112"

–maven3.x：maven 3.3以上版本；Apache Maven 3.6.3

–IntelliJIDEA2019：IntelliJ IDEA 2019.3.4 x64、STS

–SpringBoot 2.2.6.RELEASE：2.2.6；

统一环境；



1、MAVEN设置

2、IDEA设置



## 4、Spring Boot HelloWorld

一个功能：

浏览器发送hello请求，服务器接受请求并处理，响应Hello World字符串；



1、创建一个maven工程；（jar）

2、导入spring boot相关的依赖

```xml
   <!-- Inherit defaults from Spring Boot -->
      <parent>
          <groupId>org.springframework.boot</groupId>
          <artifactId>spring-boot-starter-parent</artifactId>
          <version>2.2.6.RELEASE</version>
      </parent>
  
      <!-- Override inherited settings -->
      <description/>
      <developers>
          <developer/>
      </developers>
      <licenses>
          <license/>
      </licenses>
      <scm>
          <url/>
      </scm>
      <url/>
  
      <!-- Add typical dependencies for a web application -->
      <dependencies>
          <dependency>
              <groupId>org.springframework.boot</groupId>
              <artifactId>spring-boot-starter-web</artifactId>
          </dependency>
      </dependencies>
```

3、编写一个主程序；启动Spring Boot应用
```java

/**
 *  @SpringBootApplication 来标注一个主程序类，说明这是一个Spring Boot应用
 */
@SpringBootApplication
public class HelloApplication {

    public static void main(String[] args) {
        SpringApplication.run(HelloApplication.class,args);

    }
}

```

4、编写相关的Controller、Service

```java
@Controller
public class HelloController {

    @ResponseBody
    @RequestMapping("/hello")
    public String hello(){
        return "Hello World!";
    }
}

```



5、运行主程序测试

6、简化部署

```xml
<!-- Package as an executable jar -->
    <build>
        <plugins>
            <plugin>
                <groupId>org.springframework.boot</groupId>
                <artifactId>spring-boot-maven-plugin</artifactId>
            </plugin>
        </plugins>
    </build>
```

将这个应用打成jar包，在cmd命令中直接使用java -jar的命令进行执行；