module PublicNavbar

  def self.included base
    base.send :include, InstanceMethods
    base.extend ClassMethods
  end

  module InstanceMethods

    def requestor_login_link
      SK::Link.new({ id: 'requestor_login_link' })
    end

  end

  module ClassMethods
    def bar2
      'bar2'
    end
  end
end
