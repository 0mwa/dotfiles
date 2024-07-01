function dU --wraps='docker-compose up -d' --description 'alias dU=docker-compose up -d'
  docker-compose up -d $argv
        
end
