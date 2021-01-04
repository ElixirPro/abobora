# OfferProducer

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `offer_producer` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:offer_producer, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/offer_producer](https://hexdocs.pm/offer_producer).


===

https://www.youtube.com/watch?v=M4mHkuQ0mqQ

docker-compose exec kafka
kafka-topics --create --topic ofertas --partitions 3 --replication-factor 1 --if-not-exists --zookeeper zookeeper:2181

docker-compose exec kafka
kafka-topics --describe --topic ofertas --zookeeper zookeeper:2181

docker-compose exec kafka
bash -c "seq 100 | kafka-console-producer --request-required-acks 1 --broker-list kafka:9092 --topic ofertas && echo 'Produced 100 messages.'"qui

docker-compose exec kafka
kafka-console-consumer --bootstrap-server kafka:9092 --topic ofertas --from-beginning --max-messages 100

Broadway

https://github.com/dashbitco/broadway
https://hexdocs.pm/broadway/Broadway.html
https://hexdocs.pm/broadway/apache-kafka.html
https://hex.pm/packages/brod https://hexdocs.pm/broadway/Broadway.html
https://hexdocs.pm/broadway/apache-kafka.html https://github.com/dashbitco/broadway
