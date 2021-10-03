package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_761:BigInteger;
      
      private var var_2113:BigInteger;
      
      private var var_1547:BigInteger;
      
      private var var_2112:BigInteger;
      
      private var var_1252:BigInteger;
      
      private var var_1546:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1252 = param1;
         this.var_1546 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1252.toString() + ",generator: " + this.var_1546.toString() + ",secret: " + param1);
         this.var_761 = new BigInteger();
         this.var_761.fromRadix(param1,param2);
         this.var_2113 = this.var_1546.modPow(this.var_761,this.var_1252);
         return true;
      }
      
      public function method_9(param1:String, param2:uint = 16) : String
      {
         this.var_1547 = new BigInteger();
         this.var_1547.fromRadix(param1,param2);
         this.var_2112 = this.var_1547.modPow(this.var_761,this.var_1252);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2113.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2112.toRadix(param1);
      }
   }
}
