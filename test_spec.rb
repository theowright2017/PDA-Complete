require('minitest/autorun')
require('minitest/rg')
require_relative('./testing_task_2.rb')
require_relative('./card.rb')

class CardGameTest < MiniTest::Test

  def setup()
    @card = Card.new("spades", 1)
    @card1 = Card.new("hearts", 5)
    @card2 = Card.new("spades", 3)
    @cards = [@card1, @card2]

    @game = CardGame.new
  end

  def test_check_ace
    assert_equal(true, @game.check_for_ace(@card))
  end

  def test_highest_card
    assert_equal("Card 1 with: 5 hearts", @game.highest_card(@card1, @card2) )
  end

  def test_cards_total
    assert_equal("You have a total of 8", @game.cards_total(@cards))
  end

end
