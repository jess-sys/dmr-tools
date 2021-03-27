.PHONY: help re build start daemon stop destroy 

re: 
	docker-compose -f docker-compose.yaml build --force-rm --no-cache
build:
	cp config/Analog_Bridge.ini AnalogBridge/
	cp config/MMDVM_Bridge.ini MMDVMBridge/
	cp config/MMDVM.ini MMDVMHost/
	cp config/hblink.cfg HBLink/
	cp config/rules.py HBLink/
	docker-compose -f docker-compose.yaml build 
logs:
	docker-compose -f docker-compose.yaml logs --tail=100
start:
	docker-compose -f docker-compose.yaml up
daemon:
	docker-compose -f docker-compose.yaml up -d
stop:
	docker-compose -f docker-compose.yaml down
destroy:
	docker-compose -f docker-compose.yaml rm 
