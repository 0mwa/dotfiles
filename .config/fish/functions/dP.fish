function dP --wraps='docker-compose ps' --description 'alias dP=docker-compose ps'
  docker-compose ps $argv
        
end
