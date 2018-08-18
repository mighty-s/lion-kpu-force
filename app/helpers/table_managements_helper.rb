module TableManagementsHelper

  def random_hash
    (0..10).map{rand(0..10)}.to_s
  end
end
