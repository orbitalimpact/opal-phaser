module Phaser
  class Sound
    include Native
    
    def play(args = {})
      arg_list = {marker: "", position: 0, volume: 1, loop: false, force_restart: true}

      arg_list.each do |name, default_value|
        unless args.include?(name)
          args[name] = default_value
        end
      end
      
      `#@native.play(#{args[:marker]}, #{args[:position]}, #{args[:volume]}, #{args[:loop]}, #{args[:force_restart]})`
    end
    
    alias_native :stop
    alias_native :destroy
  end
end