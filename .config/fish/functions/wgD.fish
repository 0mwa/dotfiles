function wgD --wraps='sudo wg-quick down wg0' --description 'alias wgD sudo wg-quick down wg0'
  sudo wg-quick down wg0 $argv
        
end
