# RubyPod

Rubypod is a simple Rails application that shows you a list of your favorite Ruby and Rails podcasts on Spotify.

It has ElasticSearch integration and uses Searchkick to provide a search functionality.

## Getting Started

To get started, clone the repository and install the gems:

```
$ git clone https://github.com/Benmuiruri/ruby-pod.git
$ cd rubypod
$ bundle install
```

Then, create the database and run the migrations:

```
$ rails db:create
$ rails db:migrate
```

Next, start ElasticSearch: (Either install it locally or preferably use Docker)

```
docker run -d -p 127.0.0.1:9200:9200 -p 127.0.0.1:9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.17.8
```

Next, add the Spotify API keys to your environment variables:

```
$ SPOTIFY_CLIENT_ID=your_client_id
$ SPOTIFY_CLIENT_SECRET=your_client_secret
```

Next, add the name and Spotify IDs of your favorite podcasts to the podcasts.yml file in the root folder. The ID is the last part of the Spotify URL for the podcast.


Finally, run the server:

```
$ rails s
```
