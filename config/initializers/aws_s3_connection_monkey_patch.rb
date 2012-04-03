module AWS
  class S3
    class Connection #:nodoc:
      private
      def create_connection
          http             = http_class.new(options[:server], options[:port])
          http.use_ssl     = !options[:use_ssl].nil? || options[:port] == 443
          http.verify_mode = OpenSSL::SSL::VERIFY_NONE
          http.read_timeout = 300 # or something else higher

          http
      end
    end
  end
end

