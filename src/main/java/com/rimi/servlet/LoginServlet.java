package com.rimi.servlet;

import com.rimi.common.LoginConstant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter(LoginConstant.LOGIN_USERNAME);
        String password = request.getParameter(LoginConstant.LOGIN_PASSWORD);
        String Choice = request.getParameter(LoginConstant.LOGIN_CHOICE);
        String Remember = request.getParameter(LoginConstant.LOGIN_REMEMBER);
        

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
