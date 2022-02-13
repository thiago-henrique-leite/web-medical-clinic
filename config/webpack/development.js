// I Had to change:
import DoISuportIt from 'components/DoISuportIt';

// to (notice the missing `./`)
import DoISuportIt from './components/DoISuportIt';

process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

module.exports = environment.toWebpackConfig()
