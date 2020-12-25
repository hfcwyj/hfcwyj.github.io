## activiti7数据库
activiti7在首次启动的时候会在数据库中生成25张表
如果你只生成了17张表格，请在springboot的配置文件中添加
```
#activiti配置
  activiti:
    #开启历史表自动生成
    historyLevel: audit
    db-history-used: true
```
如果你没有自动生成表格，请在springboot的配置文件中的数据源配置中url字段后
添加&nullCatalogMeansCurrent=true 开启自动生成表
```
spring:
  datasource:
    #&nullCatalogMeansCurrent=true 开启自动生成表
    url: jdbc:mysql://192.168.159.134:3308/activiti7demo?useUnicode=true&useSSL=false&characterEncoding=utf8&serverTimezone=UTC&nullCatalogMeansCurrent=true
    driver-class-name: com.mysql.cj.jdbc.Driver
    username: root
    password: 123

```
![25张简单介绍](img/2449026715.png)
详细介绍跳转[博客](https://www.cnblogs.com/telwanggs/p/7491564.html)

## 工作流Bpmn文件
这里流程图绘制推荐使用官方的方式进行流程图绘制。

#### 1.首先配置好tomcat
过程省略。。。。。
#### 下载官方的流程部署war包
[官方下载连接](https://github-production-release-asset-2e65be.s3.amazonaws.com/5793738/ed72d6fe-4226-11e7-9aec-5d7d5c15c612?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20201207%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20201207T080554Z&X-Amz-Expires=300&X-Amz-Signature=592eb6c44aee86700bd158f9982f38c6dd52f8b031254dbdcefff68def7d2900&X-Amz-SignedHeaders=host&actor_id=51687422&key_id=0&repo_id=5793738&response-content-disposition=attachment%3B%20filename%3Dactiviti-6.0.0.zip&response-content-type=application%2Foctet-stream)
#### 部署到tomcat
将官方包中的 activiti-rest.war，activiti-app.war，activiti-admin.war。
部署到tomcat中的webapps目录下
#### 启动tomcat
启动后在浏览器访问[http://localhost:8080/activiti-app](http://localhost:8080/activiti-app)
就进入的bpmn绘制界面了，
账号：admin
密码：test
![login界面](img/1.png)
选择第一个
![登录后界面](img/2.png)
创建bpmn文件,就可以开始绘制了
![开始](img/3.png)
#### 补充
在此处提一点，虽然也有很多工具可以方便的对于流程图进行绘画，虽然都是遵循bpmn2.0的标准，
但是，绘制工具使用的框架不同，bpmn文件只能被对应框架的工作流解析。
比如说
![这个工具](img/20201207110151.png)
**绘制的bpmn文件解析成xml是**
![xml解析](img/20201207110532.png)
**而activit框架的xml是**
![activti xml](img/20201207111156.png)
**对比可以明显看出不同**，上面的工具进行绘制的bpmn文件，虽然看着一样，但是无法被activiti解析
另外，
**如果你使用的Java IDE是IDEA 2019版本的话**，你可以下载**actiBPM**插件进行方便的绘制，19以上版本慎用，
bug特别多，功能显示不完全，基本上是无法使用。
**如果你使用的Java IDE是eclipe的话**,你可以下载官方提供的插件，进行方便绘制。
这是插件安装地址和Name
**在eclipe安装插件的地方复制进去,不是直接点链接！**
Name: Activiti BPMN 2.0 designer
Location: https://activiti.org/designer/update/

## Bpmn文件绘制
![开始](img/b1.png)
**Model name: 是流程图名称**

**Model key: 流程图唯一标识key**

**Description: 流程图描述**
![新的流程图](img/b2.png)
**先简单介绍一个标签**
![开始标签](img/task1.png)

**Start event**：空白开始事件(需要手动启动事件)（手动）

**Start timer event**：定时开始事件(定时启动流程)（定时器）

**Start signal event**：信号开始事件(根据外部信号启动流程)（捕获）

**Start message event**：消息开始事件(根据消息发送启动流程)（捕获）

**Start error event**：异常开始事件(发生异常启动流程)（捕获）
![Task事件](img/task2.png)

**User task**：用户任务（需要用户进行交互执行的任务）（交互）

**Service task**：服务任务（自动执行的任务）（自动）

**Script task**：脚本任务（任务自动执行的脚本）（自动）

**Business rule task**：规则任务（需要引入**Drools**）（规则）（自动）

**Receive task**：接受任务（等待接受信号）（自动）（等待）

**Manual task**：手动任务（表示程序之外需要人做的任务）（没有作用只是留下一点痕迹表示流程走过某个节点）（自动）

**Mail task**：邮件事件（发送一封邮件）（自动）

**Camel task**：骆驼任务（需要引入 Camel）（规则）（自动）

**Decision task**：决策任务 （根据决策表决定任务流程）（决策表相当于一张很多条件的分支判断表）（规则）

![子流程](img/task3.png)

**Sub process** ：子流程事件（子事件是个完整的流程 ，相当于一个模块）

**Event sub process**：事件子流程事件

**Call activity**：流程复用技术（调用子流程）

![网关事件](img/task4.png)

**Exclusive gateway**：排他网关（相当于if else）

**Parallel gateway**：并行网关（相当于一个项目分成很多模块，然后交给很多人，所有人弄完之后进行汇总）

**Inclusive gateway**：包含网关（排他网关和并行网关的结合体）

**Event gateway**：事件网关（根据事件判断流向）

![事件](img/task5.png)

**Boundary error event**：边界异常事件（捕获）

**Boundary timer event**：边界定时事件（捕获）

**Boundary signal event**：边界信号事件（捕获）

**Boundary message event**：边界消息事件（捕获）

**Boundary cancel event**：边界取消事件（捕获）

**Boundary compensation event**：边界补偿事件（捕获）

**Intermediate timer catching event**：流程之间时间等待事件（定时器）

**Intermediate signal catching event**：流程之间信号等待事件	（捕获）

**Intermediate message catching event**：流程之间消息等待事件	（捕获）

**Intermediate none throwing event**：空白抛出事件（抛出）

**Intermediate siganal throwing event**：信息抛出事件（抛出）

![结束事件](img/task6.png)

**End event**：空白结束事件

**End error event**：错误结束事件

**End cancel event**：取消结束事件

**End terminate event**：终结结束事件（中断事件）



**一个个解释起来也很麻烦**

下面参照一个个案例进行学习理解

## 简单案例来了解一下activiti7
![案例1](img/user1.png)
现在一个简单的流程图就画完了
让我们部署运行一下这个流程图

