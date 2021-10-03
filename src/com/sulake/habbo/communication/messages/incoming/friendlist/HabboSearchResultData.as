package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_1923:int;
      
      private var var_1828:String;
      
      private var var_2017:String;
      
      private var var_2021:Boolean;
      
      private var var_2022:Boolean;
      
      private var var_2018:int;
      
      private var var_2020:String;
      
      private var var_2019:String;
      
      private var var_1699:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1923 = param1.readInteger();
         this.var_1828 = param1.readString();
         this.var_2017 = param1.readString();
         this.var_2021 = param1.readBoolean();
         this.var_2022 = param1.readBoolean();
         param1.readString();
         this.var_2018 = param1.readInteger();
         this.var_2020 = param1.readString();
         this.var_2019 = param1.readString();
         this.var_1699 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_1923;
      }
      
      public function get avatarName() : String
      {
         return this.var_1828;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2017;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2021;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2022;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2018;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2020;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2019;
      }
      
      public function get realName() : String
      {
         return this.var_1699;
      }
   }
}
