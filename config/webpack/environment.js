const { environment } = require("@rails/webpacker");

environment.loaders.append("graphql", {
  test: /\.(graphql|gql)$/,
  exclude: /node_modules/,
  loader: require.resolve("graphql-tag/loader"),
});

module.exports = environment;
