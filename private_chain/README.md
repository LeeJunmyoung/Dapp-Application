# private block chain ����

## 1. geth ��ġ

## 2. �ʱ� json ���� ����
* ���۸��ؼ� genesis.json�� �ļ� �׸��� Ȯ���غ���.

## 3.private ��� ü�� �����
> geth init .\genesis.json --datadir [������]
*�ʱ������� �������.

## 4.private ���ü�� �۵�
>geth --datadir .\private_chaindata\ --nodiscover

## 5. ���ο� �ַܼ� ipc ����
>geth attach ipc://./pipe/geth.ipc  

## 6. ��������
> eth.newAccount()
> ��ɾ� ref : https://github.com/ethereum/go-ethereum/wiki/Management-APIs

## 7. mining
> miner.start(thread ��)

## 8. web3 ��ġ
> https://github.com/ethereum/web3.js/

## 9. geth rpc open ����
> geth --datadir .\private_chaindata\ --rpc --rpcapi "db,net,eth,web3" --rpccorsdomain "*"
> json -rpc endpoint - ref : https://github.com/ethereum/wiki/wiki/JSON-RPC#json-rpc-endpoint

## 10. web3 ���� ����
