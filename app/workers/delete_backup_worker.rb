class DeleteBackupWorker
    include Sidekiq::Worker
    sidekiq_options retry: false
  
    def perform
      PokemonCard.destroy_all
    end
  
  end