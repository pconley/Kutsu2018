module PublicTopline

  def self.included base
    base.send :include, InstanceMethods
    base.extend ClassMethods
  end

  module InstanceMethods

    def admin_login_link
      SK::Link.new({ id: 'admin_login_link' })
    end

  end

  module ClassMethods
    def bar2
      'bar2'
    end
  end
end
