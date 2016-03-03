ActiveRecord::Base.connection_pool.with_connection do
  ActiveUUID::Patches.apply!
end