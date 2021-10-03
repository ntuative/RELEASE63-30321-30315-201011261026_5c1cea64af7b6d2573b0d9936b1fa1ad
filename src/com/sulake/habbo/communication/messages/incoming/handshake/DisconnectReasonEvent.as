package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1695:int = 0;
      
      public static const const_1263:int = 1;
      
      public static const const_1481:int = 2;
      
      public static const const_1579:int = 3;
      
      public static const const_1743:int = 4;
      
      public static const const_1664:int = 5;
      
      public static const const_1447:int = 10;
      
      public static const const_1729:int = 11;
      
      public static const const_1554:int = 12;
      
      public static const const_1735:int = 13;
      
      public static const const_1630:int = 16;
      
      public static const const_1559:int = 17;
      
      public static const const_1628:int = 18;
      
      public static const const_1714:int = 19;
      
      public static const const_1625:int = 20;
      
      public static const const_1737:int = 22;
      
      public static const const_1765:int = 23;
      
      public static const const_1549:int = 24;
      
      public static const const_1718:int = 25;
      
      public static const const_1586:int = 26;
      
      public static const const_1698:int = 27;
      
      public static const const_1763:int = 28;
      
      public static const const_1641:int = 29;
      
      public static const const_1615:int = 100;
      
      public static const const_1568:int = 101;
      
      public static const const_1683:int = 102;
      
      public static const const_1629:int = 103;
      
      public static const const_1675:int = 104;
      
      public static const const_1702:int = 105;
      
      public static const const_1656:int = 106;
      
      public static const const_1771:int = 107;
      
      public static const const_1739:int = 108;
      
      public static const const_1742:int = 109;
      
      public static const const_1564:int = 110;
      
      public static const const_1626:int = 111;
      
      public static const const_1724:int = 112;
      
      public static const const_1565:int = 113;
      
      public static const const_1607:int = 114;
      
      public static const const_1608:int = 115;
      
      public static const const_1563:int = 116;
      
      public static const const_1731:int = 117;
      
      public static const const_1723:int = 118;
      
      public static const const_1642:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1263:
            case const_1447:
               return "banned";
            case const_1481:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
