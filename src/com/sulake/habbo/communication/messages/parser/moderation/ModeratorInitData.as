package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitData implements IDisposable
   {
       
      
      private var var_1184:Array;
      
      private var var_1185:Array;
      
      private var _issues:Array;
      
      private var var_951:Array;
      
      private var var_1933:Boolean;
      
      private var var_1936:Boolean;
      
      private var var_1932:Boolean;
      
      private var var_1931:Boolean;
      
      private var var_1935:Boolean;
      
      private var var_1934:Boolean;
      
      private var var_1937:Boolean;
      
      private var _disposed:Boolean;
      
      public function ModeratorInitData(param1:IMessageDataWrapper)
      {
         super();
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         this._issues = [];
         this.var_1184 = [];
         this.var_1185 = [];
         this.var_951 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.parse(param1))
            {
               this._issues.push(_loc2_.issueData);
            }
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1184.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_951.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         this.var_1933 = param1.readBoolean();
         this.var_1936 = param1.readBoolean();
         this.var_1932 = param1.readBoolean();
         this.var_1931 = param1.readBoolean();
         this.var_1935 = param1.readBoolean();
         this.var_1934 = param1.readBoolean();
         this.var_1937 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1185.push(param1.readString());
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1184 = null;
         this.var_1185 = null;
         this._issues = null;
         for each(_loc1_ in this.var_951)
         {
            _loc1_.dispose();
         }
         this.var_951 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get messageTemplates() : Array
      {
         return this.var_1184;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return this.var_1185;
      }
      
      public function get issues() : Array
      {
         return this._issues;
      }
      
      public function get offenceCategories() : Array
      {
         return this.var_951;
      }
      
      public function get cfhPermission() : Boolean
      {
         return this.var_1933;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return this.var_1936;
      }
      
      public function get alertPermission() : Boolean
      {
         return this.var_1932;
      }
      
      public function get kickPermission() : Boolean
      {
         return this.var_1931;
      }
      
      public function get banPermission() : Boolean
      {
         return this.var_1935;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return this.var_1934;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return this.var_1937;
      }
   }
}
