<p align="center">
    <img src="https://raw.githubusercontent.com/Caratacus/Crown/master/Crown.png" width="300">
    <p align="center">
        Based on SpringBoot2, Crown builds a rapidly developed web application scaffolding.
        <br>      
        <br>      
        <span>
            <span>
                Crown官方交流群：223706133
            </span>
            <span>
                <a target="_blank" href="https://shang.qq.com/wpa/qunwpa?idkey=180c0eb468ec425c7208f49f142e4057f3f83a2fdabfe07ccb4606a414cd6413">
                <img border="0" src="https://pub.idqqimg.com/wpa/images/group.png" alt="Crown官方交流群" title="Crown官方交流群"></a>
            </span>
        </span>
        <br>
        <br>
        <a href="https://spring.io/projects/spring-boot">
        <img src="https://img.shields.io/badge/spring--boot-2.1.1.RELEASE-blue.svg" alt="spring-boot"></a>
		<a href="https://travis-ci.org/Caratacus/Crown">
		<img src="https://www.travis-ci.org/Caratacus/Crown.svg?branch=master"></a>
		<a href="https://app.codacy.com/app/Caratacus/Crown?utm_source=github.com&utm_medium=referral&utm_content=Caratacus/Crown&utm_campaign=Badge_Grade_Dashboard">
		<img src="https://api.codacy.com/project/badge/Grade/81a3765292f04b3cad7b7a548daf5953"></a>
		<a href="https://codecov.io/gh/Caratacus/Crown">
        <img src="https://codecov.io/gh/Caratacus/Crown/branch/master/graph/badge.svg"></a>
		<a href="https://github.com/Caratacus/Crown">
        <img src="https://tokei.rs/b1/github/Caratacus/Crown?category=lines"></a>
		<a href="https://github.com/Caratacus/Crown">
		<img src="https://img.shields.io/badge/JDK-1.8-green.svg" alt="JDK 1.8" title="JDK 1.8"></a>
		<a href="https://mit-license.org">
        <img src="https://img.shields.io/cocoapods/l/Alamofire.svg?style=flat"></a>
    </p>
</p>

-----------------------------------------------------------------------------------------------
<p align="center">
    <p align="center">
        热烈庆祝 mybatis-plus、layui 荣获 2018 年度最受欢迎中国开源软件 <a href="https://www.oschina.net/question/2896879_2290300">Top 5</a>.
        <br>
        <br>
    </p>
     <img src="https://raw.githubusercontent.com/Caratacus/Resource/master/2018-top5.jpg" alt="2018-top5.jpg">
</p>

-----------------------------------------------------------------------------------------------
##### Intro :cat:

> 本人作为**mybatis-plus核心开发**之一，编写了该项目以推广**mybatis-plus3.0**的使用

> 参考本项目完全可以让你轻松玩转**mybatis-plus**最新版本（**持续更新**），故也称为教学版本

> 除了基本使用，还有一些**进阶玩法**在项目中等待大家来发现

> **体验地址** [http://crown.baomidou.com/login.html](http://crown.baomidou.com/login.html)

-----------------------------------------------------------------------------------------------
#####
<sup>
<sup>1</sup> JDK1.8+ <br/>
<sup>2</sup> MySQL5.7+ <br/>
<sup>3</sup> Gradle4.10+ <br/>
</sup>

-----------------------------------------------------------------------------------------------
##### Start :dog:
<sup>
<sup>1</sup> 准备好上述基本环境 <br/>
<sup>2</sup> 导入crown.sql文件(src/test/resources/sql/crown.sql) <br/>
<sup>3</sup> 启动CrownApplication.java <br/>
<sup>4</sup> 访问http://localhost:8088 <br/>
</sup>

-----------------------------------------------------------------------------------------------
##### Show :palm_tree:

![login.jpg](https://raw.githubusercontent.com/Caratacus/Resource/master/crown/login.jpg?223706133)
<br>
![user.png](https://raw.githubusercontent.com/Caratacus/Resource/master/crown/user.png?223706133)
<br>
![role.png](https://raw.githubusercontent.com/Caratacus/Resource/master/crown/role.png?223706133)
<br>
![menu.png](https://raw.githubusercontent.com/Caratacus/Resource/master/crown/menu.png?223706133)
<br>
![menu-form.png](https://raw.githubusercontent.com/Caratacus/Resource/master/crown/menu-form.png?223706133)
<br>
![resource.png](https://raw.githubusercontent.com/Caratacus/Resource/master/crown/resource.png?223706133)

-----------------------------------------------------------------------------------------------
##### Feature :rocket:
<sup>
<sup>1</sup> 标准的Restful风格，完美的标准化API <br/>
<sup>2</sup> 防止XSS攻击、SQL注入，妈妈再也不用担心我的安全问题 <br/>
<sup>3</sup> 深度定制mybatis-plus，各种玩法意想不到 <br/>
<sup>4</sup> 深入拓展ModelMapper，各种类型一键转换 <br/>
<sup>5</sup> 运用Liquibase，增量SQL一键导出 <br/>
<sup>6</sup> 接口日志详情打印，所有访问信息一览无遗 <br/>
<sup>7</sup> 各项配置调至最优，再也不需要担心默认值性能问题 <br/>
<sup>8</sup> P6spy打印SQL，一切操作尽在掌握 <br/>
<sup>9</sup> Shiro RestApi 鉴权，前后端完全隔离 <br/>
<sup>10</sup> Mock测试、TravisCI保驾护航，BUG再见，再也不见 <br/>
<sup>N</sup> 更多特性持续更新 <br/>
</sup>

-----------------------------------------------------------------------------------------------
##### Frameworks :microscope:
<sup>
<sup>1</sup> 核心框架: SpringBoot <br/>
<sup>2</sup> 持久层框架: mybatis、mybatis-plus <br/>
<sup>3</sup> 数据库连接池: HikariCP <br/>
<sup>4</sup> SQL脚本: Liquibase <br/>
<sup>5</sup> 数据校验: HibernateValidator <br/>
<sup>6</sup> 对象转换: ModelMapper <br/>
<sup>7</sup> JSON转换: Jackson <br/>
<sup>8</sup> 接口文档: Swagger <br/>
<sup>9</sup> 基础工具类: ApacheCommons、VjTools <br/>
<sup>10</sup> 日志: SLF4J、Async Log4j2 <br/>
<sup>11</sup> SQL打印: P6spy <br/>
<sup>12</sup> 权限认证: Shiro <br/>
<sup>13</sup> 页面: layui <br/>
<sup>N</sup> 以上依赖基本都会升级为最新版本 <br/>
</sup>

-----------------------------------------------------------------------------------------------
##### [Lombok](http://projectlombok.org/) FAQ :mushroom:

* ###### 为什么下载的代码后，使用IDEA打开没有相应的get set方法呢？

<sup>
    答：因为框架使用了Lombok包，它是在编译的时期，自动生成get set方法，并不影响运行
</sup>

* ###### 下载的代码后，使用IDEA想自己修改源码时总是莫名提示报错？

![idea-annotation-compile.png](https://raw.githubusercontent.com/Caratacus/Resource/master/idea-annotation-compile.png)

<sup>
    答：上图所示，IDEA下载Lombok插件并开启注解编译支持
</sup>

* ###### 代码编译各种不通过，是什么问题？![Travis Build标签](https://travis-ci.org/Caratacus/Crown.svg?branch=master)

<sup>
    答：查看问题上travis build标签，passing代表代码测试用例通过，更不存在编译问题；failing表示代码测试不通过，联系作者（作者自己也会收到邮件）
</sup>

* ###### 为什么项目启动后用127.0.0.1无法访问项目，localhost却可以？

<sup>
    答：项目是前后端分离的需要127.0.0.1访问方式，修改config.js中serverUrl路径即可
</sup>

* ###### 为什么eclipse的环境执行时，枚举类型就不会变成数值，idea却可以？

<sup>
    答：主要是因为引入了spring-boot-devtools依赖，在eclipse运行该项目时，务必去除devtools依赖包（以及application.yml中devtolls属性）。idea则不受影响，原因是eclipse没有识别到devtools的排除文件配置，具体细节没有去深究，作者本人没有使用eclipse
</sup>

-----------------------------------------------------------------------------------------------
##### License :globe_with_meridians:

   The Crown is released under of the [Mit License](https://mit-license.org). <br/>

-----------------------------------------------------------------------------------------------
##### 有事烧钱 :octocat:

<img src="https://raw.githubusercontent.com/Caratacus/Resource/master/pay.jpg" alt="pay.jpg" width="650" hight="150">