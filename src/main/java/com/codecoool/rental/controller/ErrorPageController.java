package com.codecoool.rental.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ErrorAttributes;
import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class ErrorPageController implements ErrorController {

    @Autowired
    private ErrorAttributes errorAttributes;

    @Override
    public String getErrorPath() {
        return "/error";
    }

    @RequestMapping("/error")
    public String error(Model model, HttpServletRequest request) {
        RequestAttributes requestAttributes = new ServletRequestAttributes(request);
        Map<String, Object> error = this.errorAttributes.getErrorAttributes(requestAttributes, true);

        model.addAttribute("title", error.get("error"));
        model.addAttribute("status", error.get("status"));

        String message = null;
        if (error.get("status").equals(404)) message = "The requested page can not be found.";
        if (error.get("status").equals(500)) message = "Apologies. Something went terribly wrong on our end.";
        model.addAttribute("message", message);

        return "exceptionHandler";
    }
}
