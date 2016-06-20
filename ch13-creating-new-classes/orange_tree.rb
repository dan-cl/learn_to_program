# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize
    @height = 0
    @oranges = 0
    @age = 0
  end

  def one_year_passes
    @oranges = 0
    @age = @age + 1
    if @age == 26
      puts 'Oh, no! The tree is too old, and has died. :('
      @height = 0
    elsif @age > 26
      puts 'A year later, the tree is still dead. :('
      @height = 0
    elsif @age > 5
      @height = @height + 0.4
      @oranges = @oranges + (@height * 15 - 25)
      puts "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges.round} oranges."
    else
      @height = @height + 0.4
      puts "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges.round} oranges."
    end
  end

  def count_the_oranges
    if @age < 26
    puts @oranges.round(0)
    else
    puts 'A dead tree has no oranges. :('
    end
  end

  def height
    if @age < 26
    puts @height.round(2)
    else
    puts 'A dead tree is not very tall. :('
    end
  end

  def pick_an_orange
    if @age > 26
      puts 'A dead tree has nothing to pick. :('
    elsif @oranges > 0
      puts 'That orange was delicious'
      @oranges = @oranges - 1
    elsif @oranges == 0
      puts 'There are no more oranges this year'
    end
  end

end

tree = OrangeTree.new
23.times do
tree.one_year_passes
end

puts
tree.one_year_passes
tree.count_the_oranges
tree.height
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
