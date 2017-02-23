module.exports = {
  resolve: {
    extensions: ['', '.js', '.jsx']
  },
  entry: __dirname + '/react_app/custom_components/main.jsx',
  output: {
    path: './public/',
    filename: "build.js",
  },
  module: {
    loaders: [
      {
        exclude: /(node_modules|bower_components)/,
        test: /(\.js|.jsx)$/,
        loader: 'babel',
        query: {
          presets: ['es2015', 'react']
        }
      },
      { test: /\.json$/, loader: 'json-loader' },
    ]
  },
  node: {
    fs: 'empty',
    net: 'empty',
    tls: 'empty'
  }
};
