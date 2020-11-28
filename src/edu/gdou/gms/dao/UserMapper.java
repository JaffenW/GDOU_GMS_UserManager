package edu.gdou.gms.dao;

import java.util.List;

import edu.gdou.gms.entity.User;

public interface UserMapper {
	
	public String queryPasswordbyUserId(int userId);//查询密码
	
	public User queryUserByUserId(int UserId);//根据userId查询用户
	
	public List<User> queryManagers(User user);//查询管理员
	
	public List<User> queryAllUser();//查询所有的用户
	
	public void addUser(User user);//添加用户
	
	public void addManager(User user);//添加管理员
	
	public String queryRoleByUserId(String userId);//根据userId查询职位
	
	public String queryRolebyUserId(int userId);//修改职位
	
	public void deleteUser(int userId);//删除用户
	
	public void undatepassword(User user);//修改密码
	
	public void completeInfo(User user);//完善信息
	
	public void undateUserRole(User user);//修改用户职位
}
