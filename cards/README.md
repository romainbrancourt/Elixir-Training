# Cards

Provides methods for creating and handling a deck of cards.
Learning comprehensions, immutability principle (Enum functions), pipe operator.

# Usage

```elixir
deck = Cards.create_deck
{hand, deck} = Cards.deal(deck, 1)
hand
["Ace of Spades"]
```
