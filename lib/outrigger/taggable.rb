module Outrigger
  module Taggable
    def self.included(base)
      base.extend(ClassMethods)

      # rubocop:disable Lint/NestedMethodDefinition
      def tags
        self.class.tags
      end
      # rubocop:enable Lint/NestedMethodDefinition
    end

    module ClassMethods
      def tag(*new_tags)
        @tags = tags.concat(new_tags).uniq
      end

      def tags
        @tags ||= []
      end
    end
  end
end
