# Web3 with Ethereum and Browser

<hr>

## Web3 

Web3 - это набор библиотек, которые позволяют вам взаимодействовать с локальным или удаленным узлом ethereum, используя соединение HTTP или IPC.
* Web3 - библиотека, которую браузер загружает, а затем помогает Вам работать с json RPC-интерфейсом, интерфейс, который Вы видите, когда присоединяетесь к экземпляру geth, тогда появляется RPC-интерфейс.

* [GitHub](github.com/ethereum/wiki/wiki/JavaScript-API)

## Установка и запуск web3 со страницей

* Для начала нужно запустить приватный Блокчейн в свое сети. [Ссылка](https://github.com/BazhanovMaxim/Blockchain-Ethereum/tree/master/private_network), т.к. к к файлам и к аккаунтам мы будем обращаться в дальнейшем.
* Скачать [репозиторий](https://github.com/ethereum/web3.js).
* Установить node.js - для раскрытия сервера. Можно и что-либо другое.
* Скачать и открыть HTTP сервер
```
npm install -g http-server
```
Запуск: 
```

http-server
```

* Так же, необходимо раскрыть узел geth, иначе не будет соединять
```
geth --datadir=./chaindata/ --rpc --rpccorsdomain "*"
```

![default](https://user-images.githubusercontent.com/26685410/42998477-e4c84d6c-8c22-11e8-9522-196f17581658.png)
