# Private network

<hr>

## Private network 
Приватной сетью может пользоваться только автор. 

Ещё есть ограниченный блокчейн, которым могут пользоваться определённой круг лиг и публичный (В ней есть главная сеть(Общедоступная, можно увидеть все транзакции и т.д.) и тестовая(Для разработчиков, где не нужно тратить реально эфиры, они выдаются автоматически для тестов)).

<hr>

## Work with geth and private network
После загрузки нужно иметь свой собственный файл `genesis.json` - это файл конфигурации для Go-Ethereum, для создания частной сети. Он создаёт первый блок, блок генерации. Он должен выглядеть так:

```
{
  "difficulty" : "0x20000",
  "extraData"  : "",
  "gasLimit"   : "0x8000000",
  "alloc": {},
  "config": {
        "chainId": 15,
        "homesteadBlock": 0,
        "eip155Block": 0,
        "eip158Block": 0
    }
}
```

`chainID` : индентификатор цепи. (1 - главная сеть; 2,3 - тестовые).
`homesteadBLock`: Начала блока с 0.
`eip155Block`: усовершенствования протокола Ethereum.
`difficulty` `gasLimit`: чем ниже, тем быстрее добыча будет идти для майнера. `gasLimit`, с другой стороны, необходим для развёртывания контрактов.

<hr>

## Geth commands for start private network and another

Все команды есть на Ethereum [GitHub](https://github.com/ethereum/wiki/wiki/JSON-RPC)
Для начала нам нужно инициализировать в новую директорую с файлом `genesis.json`

```
geth init .\genesis.json --datadit mychaindata
```

Запуск Geth с этим каталогом цепочек
```
geth --datadit .\mychaindata\
```

Для просмотра уже запущенного `geth`
```
geth attach \\.\\pipe\geth.ipc
```

Просмотр аккаунтов
```
eth.accounts
```

Создание аккаунта
```
eth.newAccount()
```

Майнинг
```
miner.setEtherbase(eth.account[0]);
miner.start(1);
miner.stop(1);
```

Кол-во Ethereum
```
eth.getBalance(eth.accounts[0]);
```

## Вход в учётную запись

```
geth --datadit .\mychaindata\ --nodiscover --unlock 0 --mine 1
```