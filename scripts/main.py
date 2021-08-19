#!/usr/bin/python3
from brownie import  config, network,accounts, First
from brownie import *
from scripts.ost import acc

#brownie run main.py --network ropsten


def deploy_First():
    dev = accounts.load(acc)
    print(network.show_active())

    cont = First.deploy(
        {"from": dev},
        publish_source=True)
   # print(f"message is: {cont.getMessage()}")
    return cont


def main():
    print(deploy_First())
