package edu.gdou.gms.service;

import java.util.List;

import edu.gdou.gms.entity.User;;

public interface UserService {
	public User queryUser(int userId);//查询用户
	
	public boolean CheckPassword(User user);//检查密码是否与账号匹配
	
	public boolean CheckRole(User user);//检查身份
	
	public boolean userRegister(User user);//用户注册
	
	public boolean updatePassword(User user);//修改密码
	
	public void updateInfo(User user);//完善信息
	
	public List<User> queryAllUser();//查询所有用户
	
	public boolean addManager(User user);//添加管理员
	
	public boolean deleteManager(int userid);//删除管理员
	
	public List<User> queryManager(User user);//查询管理员
	
	public boolean alterRole(User user);//更新管理员角色
	
	public String queryRoleByUserId(int userId);//查询职位
	
		
}
