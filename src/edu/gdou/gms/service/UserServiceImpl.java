package edu.gdou.gms.service;

import java.util.List;

import edu.gdou.gms.dao.UserMapper;
import edu.gdou.gms.entity.User;

public class UserServiceImpl implements UserService {
	private UserMapper  userMapper ;
	
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
	
	@Override
	public User queryUser(int userId) {
		return userMapper.queryUserByUserId(userId);
	}
	
	@Override
	public boolean CheckPassword(User user) {//校验密码
		if (user.getPassword().equals(userMapper.queryPasswordbyUserId(user.getUserId()))) {
			return true;
		}else {
			return false;
		}	
	}
	
	@Override
	public boolean CheckRole(User user) {//校验身份
		if (userMapper.queryRolebyUserId(user.getUserId()).equals("supermanager")) {
			return true;
		}else if (user.getRole() == null) {
			return false;
		}else if(user.getRole().equals(userMapper.queryRolebyUserId(user.getUserId()))){
			return true;
		}else {
			return false;
		}
	}
	
	@Override
	public boolean userRegister(User user) {//用户注册
		if (userMapper.queryUserByUserId(user.getUserId()) == null) {
			user.setRole("student");
			userMapper.addUser(user);
			return true;
		}else 
			return false;
				
	}
	
	@Override
	public boolean updatePassword(User user) {//修改密码
		System.out.println(user.getUserId());
		if (user.getPassword().equals(userMapper.queryPasswordbyUserId(user.getUserId()))) {
			userMapper.undatepassword(user);
			return true;
		}else
			return false;	
	}
	
	@Override
	public void updateInfo(User user) {//完善信息
		userMapper.completeInfo(user);
	}
	
	@Override
	public List<User> queryAllUser() {
		return userMapper.queryAllUser();
	}
	
	@Override
	public boolean addManager(User user) {//添加管理员
		if (userMapper.queryUserByUserId(user.getUserId()) == null) {
			user.setRole("manager");
			userMapper.addManager(user);
			return true;
		}else 
			return false;
	}
	
	@Override
	public boolean deleteManager(int userId) {//删除管理员
		if (userMapper.queryUserByUserId(userId) != null) {
			userMapper.deleteUser(userId);
			return true;
		}else {
			return false;
		}	
	}
	
	@Override
	public List<User> queryManager(User user){//查询管理员
		List<User> users = userMapper.queryManagers(user);
		return users;
	}
	
	@Override
	public boolean alterRole(User user) {//更新管理员角色
		if (userMapper.queryUserByUserId(user.getUserId()) != null) {
			userMapper.undateUserRole(user);
			return true;
		}else {
			return false;
		}	
	}
	
	@Override
	public String queryRoleByUserId(int userId) {//查询职位
		return userMapper.queryRolebyUserId(userId);
	}
}
