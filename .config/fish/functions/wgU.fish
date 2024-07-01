function wgU --wraps='sudo wg-quick up wg0' --description 'alias wgU sudo wg-quick up wg0'
  sudo wg-quick up wg0 $argv
        
end
