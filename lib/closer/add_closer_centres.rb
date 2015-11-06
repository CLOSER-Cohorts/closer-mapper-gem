module Closer
  module AddCloserCentres
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def add_closer_centres
        include Closer::AddCloserCentres::LocalInstanceMethods

        def where(args)
          if args.has_key? :study
            if args[:study] == 'CLS'
              args[:study] = ['BCS','MCS','NCDS']
            elsif args[:study] == 'SOTON'
              args[:study] = ['HCS','SWS']
            end
          end
          super(args)
        end
      end
    end

    module LocalInstanceMethods
      def cls?
        return study == "CLS" || study == "BCS" || study == "MCS" || study == "NCDS"
      end
      alias cls cls?

      def soton?
        return study == "SOTON" || study == "HCS" || study == "SWS"
      end
      alias soton soton?
    end
  end
end

ActiveRecord::Base.send :include, Closer::AddCloserCentres
