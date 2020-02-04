package com.wang.springboot.controller;


import com.wang.springboot.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by wangyining on 2017/10/23.
 */
@Controller
public class ArchiveShowController {

    @Autowired
    private BlogService blogService;

    @GetMapping("/archives")
    public String archives(Model model) {
        //所有的博客
        model.addAttribute("archiveMap", blogService.archiveBlog());
        //总的博客数量
        model.addAttribute("blogCount", blogService.countBlog());
        return "archives";
    }
}
