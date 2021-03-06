package com.sulake.habbo.avatar.actions
{
   public interface IActionDefinition
   {
       
      
      function get id() : String;
      
      function get state() : String;
      
      function get precedence() : int;
      
      function get activePartSet() : String;
      
      function get method_3() : Boolean;
      
      function get isDefault() : Boolean;
      
      function get assetPartDefinition() : String;
      
      function get lay() : String;
      
      function get geometryType() : String;
      
      function get isAnimation() : Boolean;
      
      function getPrevents(param1:String = "") : Array;
      
      function getPreventHeadTurn(param1:String = "") : Boolean;
      
      function setOffsets(param1:String, param2:int, param3:Array) : void;
      
      function getOffsets(param1:String, param2:int) : Array;
   }
}
