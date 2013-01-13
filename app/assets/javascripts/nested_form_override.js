jQuery(function($) {  
  NestedFormEvents.prototype.insertFields = 
    function(content, assoc, link) {
      return $(".above_new_items").after(content);
    }
});