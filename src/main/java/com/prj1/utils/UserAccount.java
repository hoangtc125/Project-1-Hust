package com.prj1.utils;
import org.springframework.stereotype.Service;

@Service
public class UserAccount {

   private String userName = "";

   public UserAccount() {

   }

   public UserAccount(String userName) {
      this.userName = userName;
   }

   public String getUserName() {
      return userName;
   }

   public void setUserName(String userName) {
      this.userName = userName;
   }
}