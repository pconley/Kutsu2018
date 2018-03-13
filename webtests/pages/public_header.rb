module PublicHeader

  def self.included base
    base.send :include, InstanceMethods
    base.extend ClassMethods
  end

  module InstanceMethods

    def donate_now_link
      SK::Link.new({ id: 'donate_now_link' })
    end

  end

  module ClassMethods
    def bar2
      'bar2'
    end
  end
end
