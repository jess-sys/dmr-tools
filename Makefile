.PHONY: help build start daemon stop destroy 

build:
	cp config/Analog_Bridge.ini AnalogBridge/
	cp config/MMDVM_Bridge.ini MMDVMBridge/
	cp config/MMDVM.ini MMDMVMHost/
	cp config/hblink.cfg HBLink/
	cp config/rules.py HBLink/
	docker-compose -f docker-compose.yml build 
start:
	docker-compose -f docker-compose.yml up
daemon:
	docker-compose -f docker-compose.yml up -d
stop:
	docker-compose -f docker-compose.yml down
destroy:
	docker-compose -f docker-compose.yml rm 
