import os
import datetime


def test_speed(command):
    start = datetime.datetime.now()
    os.system(command)
    finish = datetime.datetime.now()
    return str(finish - start)


gathering = 'ansible-playbook Test_speed_with_facts.yml -i ../inventory.ini'
no_gathering = 'ansible-playbook Test_speed_without_facts.yml -i ../inventory.ini'

print(test_speed(gathering))
print(test_speed(no_gathering))
