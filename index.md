## Welcome my blogs
## i'll probably update a blog, maybe

###### http.

```java
protected void configure(HttpSecurity http) throws Exception {
	http.authorizeRequests()//认证配置
		.anyRequest()//任何请求
		.authenticated()//都需要身份认证
		.and()
		.antMatchers("/login/**","/logout")//配置请求路径
		.permitAll()//指定URL不需保护
        .antMatchers("/find").hasAuthority("admins")//需要用户带有admins权限
        .hasAnyAuthority("role")//需要主体带有role权限
        .hasRole("admin")//需要用户具有admin角色
        .and()
		.fromLogin()//表单登录
		.loginPage("/login")//配置哪个url为登录页面
		.loginProcessingUrl("/login")//设置哪个是登录的url
        .successForwardUrl("/success")//登陆成功后跳转url
        .failureForwardUrl("/fail")//登陆失败之后跳转url
        .usernameParameter("username")//获取登陆用户名
        .passwordParameter("password")//获取登陆密码
        .and()
        .logout()//退出
        .logoutUrl("/login")//配置哪个url为退出页面
        .logoutSuccessUrl("/index")//退出成功后跳转页面
        .logoutSuccessHandler(...)//退出成功后操作
        .and()
        .exceptionHandling()//权限校验
        .accessDeniedPage("/unauth");//权限校验异常跳转url
        .accessDeniedHandler(...)//权限校验失败后操作
        .and()
        .remeberMe()//记住我
        .tokenValiditySeconds(10)//时间
        .tokenRepository(tokenPepository)
        .userDetailsService();
        .csrf().disable()//关闭csrf
}
```



这是主分支的测试文件
=======
