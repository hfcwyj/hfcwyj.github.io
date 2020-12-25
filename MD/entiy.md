# emp 查询条件类
|	字段名|	字段类型|	字段描述|
|----|----|----|
|numbering	|String	|编号	|
|name	|String	|姓名	|
|sex	|String	|性别	|
|nation	|String	|民族	|
|birthday	|Date	|生日	|
|phone	|String	|电话	|
|idcard	|String	|身份证号	|
|politic	|String	|政治面貌	|
|address	|String	|居住地	|
|personalEmail	|String	|个人邮箱	|
|enterpriSeEmail	|String	|企业邮箱	|
|deptId	|Integer	|部门id	|
|postId	|Integer	|岗位id	|
|skillName	|String	|员工技能	|
|currentPage	|Integer	|当前页	|
|pageSize	|Integer	|每页数量	|

# EmailTo 邮件
|字段名称	|字段类型	|字段描述	|
|----|----|----|
|fromTo	|String	|发送给谁	|
|cc	|String	|抄送给谁	|
|subject	|String	|主题	|
|content	|String	|文本	|
|file	|File	|附件	|

# EmployeeTo 员工注册
|字段名称	|字段类型	|字段描述	|
|----|----|----|
|id	|Integer	|id	|
|numbering	|String	|编号	|
|name	|String	|姓名	|
|sex	|String	|性别	|
|roles	|ArrayList	|员工角色集合	|
|enterpriseEmail	|String	|企业邮箱	|
|entryTime	|Date	|入职时间	|
|formalMonth	|Integer	|转正月数	|
|formalTime	|Date	|转正时间	|
|contractDeadline	|Integer	|合同期限	|
|contractMaturityTime	|Date	|合同到期时间	|
|deptId	|Integer	|部门id	|
|postId	|Integer	|岗位id	|
|createTime	|Date	|创建时间	|
|createUser	|String	|创建人	|
|state	|Integer	|状态	|
|completion	|Integer	|信息完整度	|
|oneselfComputer	|Integer	|电脑是否自用	|

# Avatar 头像
|字段名	|字段类型	|字段描述	|
|----|----|----|
|id	|Integer	|id	|
|empId	|Integer	|员工id	|
|avatarUrl	|String	|头像路径	|
|state	|Integer	|状态	|
|createTime	|Date	|创建日期	|
|createUser	|String	|创建人	|
|updateTime	|Date	|修改日期	|

# Dept 部门实体
|	字段名|	字段类型|	字段描述|
|----|----|----|
|	id|	Integer|id	|
|name	|String	|部门名称	|
|parentId	|Integer	|所属部门Id	|
|depPath	|Integer	|父级部门路径	|
|isParent	|Integer	|是不是父级	|
|createTime	|Date	|创建时间	|
|updateTime	|Date	|更新时间	|
|createUser	|String	|创建人	|
|state	|Integer	|状态	|
|childrenDept	|ArrayList	|子部门	|
|count	|Integer	|部门人数	|

# Employee 员工实体类
|	字段名|	字段类型|	字段描述|
|----|----|----|
|	id|Integer	|id	|
|	numbering|	String|	编号|
|	name|	String|姓名	|
|	sex|	String|	性别|
|	nation|	String|	民族|
|	birthday|	Date|出生日期	|
|	phone|	String|手机号	|
|	idcard|	String|	身份证号|
|	pwd|	String|	密码|
|politic	|	String|政治面貌	|
|	area|String	|	区域|
|	address|	String|详细地址	|
|	personalEmail|String	|	个人邮箱|
|	enterpriseEmail|String	|企业邮箱	|
|	highestEducation|String	|最高学历	|
|	profession|	String|	所学专业|
|	school|String	|毕业学校	|
|	certificateUrl|String	|证书url	|
|	bachelorUrl|String	|学士证url	|
|	entryTime|Date	|入职时间	|
|	formalTime|	Date|转正时间	|
|	contractDeadline|Date	|合同期限	|
|	contractMaturityTime|Date	|合同到期时间	|
|	deptId|	Integer|部门id	|
|	postId|	Integer|岗位id	|
|	createTime|Integer	|创建时间	|
|	updateTime|	Integer|修改时间	|
|	createUser|	String|创建人	|
|	state|	Integer|状态	|
|	completion|Integer	|信息完整度	|
|	roles|ArrayList	|所拥有的角色信息	|
|	dept|Dept	|部门对象	|
|	post|Post	|岗位对象	|
|	skills|ArrayList	|员工技能	|
|	avatar|Avatar	|头像	|
|	oneselfComputer|Integer	|电脑是否自用	|

# EmployeeRole 员工角色表
|	字段名|	字段类型|	字段描述|
|----|----|----|
|id	|Integer	|id	|
|eid	|Integer	|员工id	|
|rid	|Integer	|角色id	|
|createTime	|Date	|创建时间	|
|updateTime	|Date	|更新时间	|
|createUser	|String	|创建人	|
|state|Integer|状态|

# Location 区域
|字段名	|字段类型	|字段描述	|
|----|----|----|
|id	|Integer	|	id|
|name	|String	|	区域名|
|fid	|Integer	|	父级id|
|statue	|Integer	|	状态|

# Menu 菜单实体类
|字段名	|字段类型	|字段描述	|
|----|----|----|
|id	|Integer	|id	|
|url	|String	|url	|
|path	|String	|路径	|
|component	|String	|组件	|
|name	|String	|组件名称	|
|iconcls	|String	|icon	|
|meta	|Meta	|元数据	|
|parentid	|Integer	|父级id	|
|enabled	|Boolean	|是否禁用	|
|createTime	|Date	|创建时间	|
|updateTime	|Date	|修改时间	|
|createUser	|String	|创建人	|
|state	|Integer	|状态	|
|children	|ArrayList	|菜单	|
|roles	|ArrayList	|角色	|

# Meta 元数据
|字段名	|字段类型	|字段描述	|
|----|----|----|
|keepAlive	|Boolean	|	|
|requireAuth	|Boolean	|	|

# Post 岗位
|字段名	|字段类型	|字段描述	|
|----|----|----|
|id	|Integer	|id	|
|postName	|String	|岗位名称	|
|createTime	|Date	|创建时间	|
|updateTime	|Date	|修改时间	|
|createUser	|String	|创建人	|
|state	|Integer	|状态	|

# Role 角色
|字段名称	|字段类型	|字段描述	|
|----|----|----|
|id	|Integer	|id	|
|roleCode	|String	|角色标识	|
|roleName	|String	|角色者	|
|createTime	|Date	|创建时间	|
|updateTime	|Date	|修改时间	|
|createUser	|String	|创建人	|
|state	|Integer	|状态	|

# RoleMenu 角色权限实体类
|字段名称	|字段类型	|字段描述	|
|----|----|----|
|id	|Integer	|id	|
|mid	|Integer	|菜单权限id	|
|rid	|Integer	|角色id	|
|createTime	|Date	|创建时间	|
|updateTime	|Date	|修改时间	|
|createUser	|String	|创建人	|
|state	|Integer	|状态	|

# Skill 技能实体类
|字段名称	|字段类型	|字段描述	|
|----|----|----|
|	id|Integer	|技能id	|
|	empId|Integer	|员工id	|
|	skillName|String	|技能名	|
|	proficiency|String	|熟练度	|
|	createTime|Date	|创建时间	|
|	updateTime|Date	|修改时间	|
|	createUser|String	|创建人	|
|	state|Integer	|状态	|





