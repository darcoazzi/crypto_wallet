namespace :dev do
  desc "Configura o ambiente de desenvolvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD...") do 
        %x(rails db:drop)
      end
      show_spinner("Criando BD...") do 
        %x(rails db:create)
      end
 
      show_spinner("Migrando BD...") do 
        %x(rails db:migrate)
      end

      show_spinner("Populando BD...") do 
        %x(rails db:seed)
      end
 
 
      
    end
  end

  def show_spinner(msg_start, msg_end = "Concluído")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start")
  end

  end
