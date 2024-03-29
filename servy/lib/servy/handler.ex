defmodule Servy.Handler do
  def handle(request) do
    # conv = parse(request)
    # conv - route(conv)
    # format_response(conv)
    request 
    |> parse 
    |> route 
    |> format_response
  end

  def parse(request) do
    # TODO: Parse the request string into a map:
    conv = %{ method: "GET", path: "/wildthings", resp_body: ""}
  end

  def route(conv) do
    #T ODO: Create a new map that also has a response body:
    conv = %{ method: "GET", path: "/wildthings", resp_body: "Bears, Lions, Tigers"}
  end

  def format_response(conv) do
    # TODO Use values in the map to create an HTTP response string
    """
  HTTP/1.1 200 OK
  Content-Type: text/html
  Content-Length: 20

  Bears, Lions, Tigers
  """
  end

end

request = """
  GET /wildthings HTTP /1/1
  Host: example.com
  User-Agent: ExampleBrowser/1.0
  Accept */*
  
  """

  response = Servy.Handler.handle(request)
  IO.puts response