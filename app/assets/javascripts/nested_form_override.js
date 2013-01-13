jQuery(function($) {  
  NestedFormEvents.prototype.insertFields = 
    function(content, assoc, link) {
      console.log("shit");
      return $(".above_new_items").after(content);
    }
});