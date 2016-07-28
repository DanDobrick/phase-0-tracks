class TodoList
  
  def initialize(list)
    @todo_list = list
  end
  
  def get_items
    @todo_list
  end

  def add_item(new_item)
    @todo_list << new_item
  end
  
  def delete_item(item_to_remove)
    @todo_list.delete(item_to_remove)
  end
   
  def get_item(integer)
    @todo_list[integer]
  end
  
end
