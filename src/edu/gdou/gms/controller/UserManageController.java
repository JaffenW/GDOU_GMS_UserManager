package edu.gdou.gms.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import edu.gdou.gms.entity.Notice;
import edu.gdou.gms.entity.User;
import edu.gdou.gms.service.NoticeService;
import edu.gdou.gms.service.UserService;

@SessionAttributes({"owner","users","notices","notice"})
//@RequestMapping("controller")
@Controller
public class UserManageController {
	
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	@Autowired
	@Qualifier("noticeService")
	private NoticeService noticeService;
	
	@RequestMapping("userLogin")//用户登录
	public ModelAndView userLogin(User user) {
		if (!userService.CheckPassword(user)) {//检查密码
			ModelAndView mv = new ModelAndView("/userjsp/UserLogin");
			mv.addObject("info", "密码错误");
			return mv;	
		}else if(!userService.CheckRole(user)) {//检查身份
			ModelAndView mv = new ModelAndView("/userjsp/UserLogin");
			mv.addObject("info", "身份不符");
			return mv;
		}else {
			List<Notice> notices = noticeService.queryAllNotice();
			User user2 = userService.queryUser(user.getUserId());
			ModelAndView mv = new ModelAndView("/userjsp/index");
			mv.addObject("owner", user2);
			mv.addObject("notices", notices);
			return mv;		
		}
	}
	
	@RequestMapping("userRegister")//用户注册
	public ModelAndView userRegister(User user) {
		if(userService.userRegister(user)) {//注册成功进入登录界面，失败返回注册界面
			ModelAndView mv = new ModelAndView("/userjsp/UserLogin");
			mv.addObject("info", "注册成功");
			return mv;		
		}else {
			ModelAndView mv = new ModelAndView("/userjsp/UserRegister");
			mv.addObject("info", "该用户已存在");
			return mv;
		}
	}

	@RequestMapping("noticeInfo/{noticeId}")//公告信息
	public ModelAndView noticeInfo(@PathVariable("noticeId")int noticeId) {
		Notice notice = noticeService.queryNotice(noticeId);
		ModelAndView mv = new ModelAndView("/userjsp/NoticeInfo");
		mv.addObject("notice", notice);
		return mv;
		
	}
	
	@RequestMapping("alterPassword")//修改密码
	public ModelAndView alterPassword(User user) {
		if(userService.updatePassword(user)) {
			ModelAndView mv = new ModelAndView("/userjsp/UserLogin");
			mv.addObject("info", "修改成功,请重新登录");
			return mv;		//修改成功返回主界面，失败则说明旧密码不正确，返回修改密码界面
		}else {
			ModelAndView mv = new ModelAndView("/userjsp/AlterPassword");
			mv.addObject("info", "旧密码错误");
			return mv;
		}
	}
	
	@RequestMapping("completeInfo")//完善资料
	public ModelAndView CompleteInfo(User user) {
		ModelAndView mv = new ModelAndView("/userjsp/CompleteInfo");
		userService.updateInfo(user);
		User user2 = userService.queryUser(user.getUserId());
		mv.addObject("owner", user2);
		mv.addObject("info", "修改成功");
		return mv;		//修改成功返回主界面，失败则说明旧密码不正确，返回修改密码界面
	}
	
	@RequestMapping("userManage")//用户管理
	public ModelAndView userManage() {
		List<User> users = userService.queryAllUser();
		ModelAndView mv = new ModelAndView("/userjsp/UserManage");
		mv.addObject("users", users);
		return mv;		
	}
		
	@RequestMapping("addManager")//添加管理员
	public ModelAndView addManager(User user) {
		if(userService.addManager(user)) {
			List<User> users = userService.queryAllUser();
			ModelAndView mv = new ModelAndView("/userjsp/AddManager");
			mv.addObject("info", "添加成功");
			mv.addObject("users", users);
			return mv;	//添加成功则返回用户管理界面，失败则说明该用户已存在，返回增加管理员界面
		}else {
			ModelAndView mv = new ModelAndView("/userjsp/AddManager");
			mv.addObject("info", "该账号已存在");
			return mv;
		}
	}
	
	@RequestMapping("deleteManager/{userId}")//删除管理员
	public ModelAndView deleteManager(@PathVariable("userId")int userId) {
		userService.deleteManager(userId);
		List<User> users = userService.queryAllUser();
		ModelAndView mv = new ModelAndView("redirect:/userjsp/UserManage.jsp");
		mv.addObject("users", users);
		return mv;
		
	}
	
	@RequestMapping("alterRole")//更新管理员角色
	public ModelAndView alterRole(User user) {
		if(userService.alterRole(user)) {
			List<User> users = userService.queryAllUser();
			ModelAndView mv = new ModelAndView("/userjsp/AlterRole");
			mv.addObject("info", "更新成功");
			mv.addObject("users", users);
			return mv;	
		}else {
			ModelAndView mv = new ModelAndView("/userjsp/AlterRole");
			mv.addObject("info", "该用户不存在");
			return mv;
		}
			
	}
	
	@RequestMapping("queryManager")//查询管理员
	public ModelAndView queryManager(User user) {
		System.out.println(user.getUserName());
		List<User> managers = userService.queryManager(user);
		if (managers.size()==0) {
			ModelAndView mv = new ModelAndView("/userjsp/QueryManager");
			mv.addObject("info", "查无此人");
			return mv;
		}else {
			ModelAndView mv = new ModelAndView("/userjsp/QueryManagerResult");
			mv.addObject("managers", managers);
			return mv;
		}	
	}
}
