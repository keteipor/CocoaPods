module Pod
  class Framework
    # @return [String] the path to the .framework
    #
    attr_reader :source_path

    # @return [String, Nil] the dSYM path, if one exists
    #
    attr_reader :dsym_path

    def initialize(source_path, dsym_path)
      @source_path = source_path
      @dsym_path = dsym_path
    end

    def ==(other)
      if other.class == self.class
        other.source_path == @source_path && other.dsym_path == @dsym_path
      else
        false
      end
    end

    alias eql? ==

    def hash
      source_path.hash
    end
  end
end
