module ApplicationHelper
  def eval_with_rescue(code)
    begin
      eval(code)
    rescue Exception => e
      "error"
    end
  end

  def activated? menu_item
    eval_with_rescue(menu_item.active_test) || menu_item.menu_items.pluck(:active_test).map{|x| eval_with_rescue(x)}.include?(true)
  end
end
