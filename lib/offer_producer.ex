defmodule OfferProducer do
  @topic "offers"

  def execute,
    do:
      %{
        name: "Macbook pro #{:rand.uniform(1000)}",
        discount: :rand.uniform(100),
        price: :rand.uniform(100_000)
      }
      |> send_msg()

  def executex,
    do:
      %{
        name: "Xbox #{:rand.uniform(1000)}",
        discount: :rand.uniform(100),
        price: :rand.uniform(100_000)
      }
      |> send_msg()

  def send_msg(payload) do
    client_id = :offer_producer
    hosts = [localhost: 9092]

    :ok = :brod.start_client(hosts, client_id)
    :ok = :brod.start_producer(client_id, @topic, [])

    :brod.produce(client_id, @topic, 0, "", payload |> Jason.encode!())
  end
end
