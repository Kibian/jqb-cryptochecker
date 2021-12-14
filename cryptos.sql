CREATE TABLE IF NOT EXISTS `gksphone_crypto_values` (
  `acronym` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `jsonname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`jsonname`),
  KEY `Acronimo` (`acronym`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `gksphone_crypto_values` (`acronym`, `name`, `price`, `jsonname`) VALUES
	('avax', 'Avalanche', 0.0, 'avalanche-2'),
	('busd', 'Binance USD', 0.0, 'binance-usd'),
	('bnb', 'Binance Coin', 0.0, 'binancecoin'),
	('btc', 'Bitcoin', 0.0, 'bitcoin'),
	('ada', 'Cardano', 0.0, 'cardano'),
	('link', 'Chainlink', 0.0, 'chainlink'),
	('doge', 'Dogecoin', 0.0, 'dogecoin'),
	('eos', 'EOS', 0.0, 'eos'),
	('eth', 'Etherium', 0.0, 'ethereum'),
	('miota', 'IOTA', 0.0, 'iota'),
	('ltc', 'Litecoin', 0.0, 'litecoin'),
	('xmr', 'Monero', 0.0, 'monero'),
	('xrp', 'XRP', 0.0, 'ripple'),
	('xlm', 'Stellar', 0.0, 'stellar'),
	('luna', 'Terra', 0.0, 'terra-luna'),
	('usdt', 'Tether', 0.0, 'tether'),
	('trx', 'Tron', 0.0, 'tron'),
	('uni', 'Uniswap', 0.0, 'uniswap'),
	('usdc', 'USD Coin', 0.0, 'usd-coin');
