class Person

  attr_accessor :name, :children
  
  def initialize(name, children=nil)
    @name = name
    @children = children
    @children_name = []
  end

  # 直近の子どもの名前を表示
  def show_children_name
    recent_children_name.join(',')
  end

  # 最終的な（末端の）子どもの名前を表示
  def show_final_children_name
    final_children_name.join(',')
  end

  # 直近の子どもの名前の配列を返却
  def recent_children_name
    children_name = []
    @children.each do |child|
      children_name << child.name
    end
    children_name
  end

  # 最終的な（末端の）子どもの名前の配列を返却
  # ただし、長男の最終的な（末端の）子どもだけほしいときは、childrenに長男を指定する
  def final_children_name(children=nil)
    children = @children.dup if children.nil?
    children.each do |child|
      unless child.children
        @children_name << child.name
      else
        final_children_name(child.children)
      end
    end
    @children_name
  end

end
