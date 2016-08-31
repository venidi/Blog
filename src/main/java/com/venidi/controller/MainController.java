package com.venidi.controller;

import com.venidi.model.BlogsEntity;
import com.venidi.model.UserPassword;
import com.venidi.repository.BlogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.script.ScriptTemplateConfig;


import java.util.List;

@Controller
public class MainController {
    boolean isLogin = false;

    @Autowired
    BlogRepository blogRepository;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(){
        return "redirect:/root/homepage";
    }

    //首页
    @RequestMapping(value = "/root/homepage",method = RequestMethod.GET)
    public String homepage(ModelMap modelMap){
        List<BlogsEntity> blogList = blogRepository.findAll();
        modelMap.addAttribute("blogList",blogList);
        return "/root/homepage";
    }

    //登录
    @RequestMapping(value = "/root/homepage/login",method = RequestMethod.GET)
    public String login(){
        return "/root/login";
    }

    //登录验证
    @RequestMapping(value = "/root/homepage/loginP",method = RequestMethod.POST)
    public String checkPw(@ModelAttribute("user")UserPassword userPassword ){

        if (userPassword.getUsername().equals("root") && userPassword.getPassword().equals("toor")) {
            isLogin = true;
            return "redirect:/root/blogs";
        }else {
            return "redirect:/root/homepage";
        }
    }

    //管理博文
    @RequestMapping(value = "/root/blogs",method = RequestMethod.GET)
    public String showBlogs(ModelMap modelMap){
        if (isLogin) {
            List<BlogsEntity> blogList = blogRepository.findAll();
            modelMap.addAttribute("blogList", blogList);
            isLogin = false;
            return "/root/blogs";
        }else {
            return "redirect:/root/homepage";
        }
    }

    // 添加博文
    @RequestMapping(value = "/root/blogs/add", method = RequestMethod.GET)
    public String addBlog() {
        return "/root/addBlog";
    }

    // 添加博文，POST请求，重定向为查看博客页面
    @RequestMapping(value = "/root/blogs/addP", method = RequestMethod.POST)
    public String addBlogPost(@ModelAttribute("blog") BlogsEntity blogsEntity) {
        String htmlContext = blogsEntity.getContent().replaceAll("\r","<br/>");
        blogsEntity.setContent(htmlContext);
        // 存库
        blogRepository.saveAndFlush(blogsEntity);
        // 重定向地址
        return "redirect:/root/blogs";
    }

    //查看文章详情
    @RequestMapping(value = "/root/blogs/show/{id}")
    public String showBlogs(@PathVariable("id")int id,ModelMap modelMap){
        BlogsEntity blog = blogRepository.findOne(id);
        modelMap.addAttribute("blog",blog);
        return "/root/blogDetail";
    }

    //修改博客内容页面
    @RequestMapping(value = "/root/blogs/update/{id}")
    public String updateBlog(@PathVariable("id")int id,ModelMap modelMap){
        BlogsEntity blog = blogRepository.findOne(id);
        modelMap.addAttribute(blog);
        return "/root/updateBlog";
    }

    //update post
    @RequestMapping(value = "/root/blogs/updateP",method = RequestMethod.POST)
    public String updateBlogP(@ModelAttribute("blogP") BlogsEntity blogsEntity){
        blogRepository.updateBlog(blogsEntity.getTitle(),blogsEntity.getContent(),blogsEntity.getId());
        blogRepository.flush();

        return "redirect:/root/blogs";
    }

    //delete
    @RequestMapping(value = "/root/blogs/delete/{id}")
    public String deleteBlog(@PathVariable("id")int id){
        blogRepository.delete(id);
        blogRepository.flush();
        return "redirect:/root/blogs";
    }


}

