# private block chain 구축

## 1. geth 설치

## 2. 초기 json 파일 생성
* 구글링해서 genesis.json을 쳐서 항목값을 확인해보쟈.

## 3.private 블록 체인 만들기
> geth init .\genesis.json --datadir [폴더명]
*초기파일을 만들어줌.

## 4.private 블록체인 작동
>geth --datadir .\private_chaindata\ --nodiscover

## 5. 새로운 콘솔로 ipc 접속
>geth attach ipc://./pipe/geth.ipc  

## 6. 계정생성
> eth.newAccount()
> 명령어 ref : https://github.com/ethereum/go-ethereum/wiki/Management-APIs

## 7. mining
> miner.start(thread 수)

## 8. web3 설치
> https://github.com/ethereum/web3.js/

## 9. geth rpc open 실행
> geth --datadir .\private_chaindata\ --rpc --rpcapi "db,net,eth,web3" --rpccorsdomain "*"
> json -rpc endpoint - ref : https://github.com/ethereum/wiki/wiki/JSON-RPC#json-rpc-endpoint

## 10. web3 연동 ㄱㄱ
