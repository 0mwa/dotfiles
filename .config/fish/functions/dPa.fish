function dPa --wraps='docker ps --all' --description 'alias dPa=docker ps --all'
  docker ps --all $argv
        
end
