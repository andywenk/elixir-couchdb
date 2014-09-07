Couchdb
=======

CouchDB client for Elixir projects written in Elixir.

Run the tests
-------------

In the project folder run:

    mix test

Handling dependencies
---------------------

In the project folder run:

    mix deps.get

> to get the dependencies

    mix deps.update

> to update the dependencies

API documentation
-----------------

The API provided by Couchdb Elixir is based on the CouchDB API. Please see the documentation at [docs.couchdb.org](http://docs.couchdb.org)

Code documentation
------------------

To create the Code documentation run

    mix docs

Usage
-----

Add `couchdb` as a dependency to your mix application in mix.exs:

    defp deps do
        [
          {:couchdb, "~> 0.0.1"}
        ]
    end


