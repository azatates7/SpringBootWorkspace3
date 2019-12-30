package internalization.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

@Controller
public class MainController implements ErrorController {

    @RequestMapping(value = "{locale:en|ru|tr}/login")
    public String log(Model model) {
        return "login";
    }

    @RequestMapping(value = "/") ///{locale:en|ru|tr}/login
    public String home(Model model){
        return "login";
    }

    @RequestMapping("/error")
    public String handleError() {
        return "error";
    }

    @Override
    public String getErrorPath() {
        return "/error";
    }

}