package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_188;
         param1["bound_to_parent_rect"] = const_95;
         param1["child_window"] = const_1066;
         param1["embedded_controller"] = const_1038;
         param1["resize_to_accommodate_children"] = const_67;
         param1["input_event_processor"] = const_28;
         param1["internal_event_handling"] = const_695;
         param1["mouse_dragging_target"] = const_234;
         param1["mouse_dragging_trigger"] = const_347;
         param1["mouse_scaling_target"] = const_259;
         param1["mouse_scaling_trigger"] = const_395;
         param1["horizontal_mouse_scaling_trigger"] = const_212;
         param1["vertical_mouse_scaling_trigger"] = const_240;
         param1["observe_parent_input_events"] = const_917;
         param1["optimize_region_to_layout_size"] = const_475;
         param1["parent_window"] = const_964;
         param1["relative_horizontal_scale_center"] = const_182;
         param1["relative_horizontal_scale_fixed"] = const_118;
         param1["relative_horizontal_scale_move"] = const_373;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_963;
         param1["relative_scale_fixed"] = const_701;
         param1["relative_scale_move"] = const_1061;
         param1["relative_scale_strech"] = const_970;
         param1["relative_vertical_scale_center"] = const_172;
         param1["relative_vertical_scale_fixed"] = const_134;
         param1["relative_vertical_scale_move"] = const_377;
         param1["relative_vertical_scale_strech"] = const_360;
         param1["on_resize_align_left"] = const_596;
         param1["on_resize_align_right"] = const_423;
         param1["on_resize_align_center"] = const_403;
         param1["on_resize_align_top"] = const_764;
         param1["on_resize_align_bottom"] = const_401;
         param1["on_resize_align_middle"] = const_449;
         param1["on_accommodate_align_left"] = const_906;
         param1["on_accommodate_align_right"] = const_489;
         param1["on_accommodate_align_center"] = const_594;
         param1["on_accommodate_align_top"] = const_878;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_771;
         param1["route_input_events_to_parent"] = const_463;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_889;
         param1["scalable_with_mouse"] = const_1093;
         param1["reflect_horizontal_resize_to_parent"] = const_499;
         param1["reflect_vertical_resize_to_parent"] = const_512;
         param1["reflect_resize_to_parent"] = const_284;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
