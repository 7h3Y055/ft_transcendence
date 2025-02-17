#!/bin/bash

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
WHITE='\033[0;37m'
CYAN='\033[0;36m'
NC='\033[0m'


echo -e "${CYAN}------------------------------------------------------------------------------------------------------------------------------------------------${NC}"
echo -e "${CYAN}\t\t\t\t\t\t\t\tServices Status:${NC}"
echo -e "${CYAN}------------------------------------------------------------------------------------------------------------------------------------------------${NC}"
echo -e "${GREEN}\t\t\t\t\t\t\t\tDocker Compose Status"
echo -e "${CYAN}------------------------------------------------------------------------------------------------------------------------------------------------${NC}"


docker-compose ps | while read -r line; do
  if [[ $line != *"IMAGE"* ]]; then
    echo -e "${WHITE}$line${NC}"
  else
    echo -e "${YELLOW}$line${NC}"
  fi
done

echo -e "${CYAN}------------------------------------------------------------------------------------------------------------------------------------------------${NC}"


docker-compose images | while read -r line; do
  if [[ $line != *"CONTAINER"* ]]; then
    echo -e "${WHITE}$line${NC}"
  else
    echo -e "${YELLOW}$line${NC}"
  fi
done


echo -e "${CYAN}------------------------------------------------------------------------------------------------------------------------------------------------${NC}"


docker-compose stats --no-stream | while read -r line; do
  if [[ $line != *"CONTAINER"* ]]; then
    echo -e "${WHITE}$line${NC}"
  else
    echo -e "${YELLOW}$line${NC}"
  fi
done

echo -e "${CYAN}------------------------------------------------------------------------------------------------------------------------------------------------${NC}"
docker volume ls | while read -r line; do
  if [[ $line != *"VOLUME"* ]]; then
    echo -e "${WHITE}$line${NC}"
  else
    echo -e "${YELLOW}$line${NC}"
  fi
done
echo -e "${CYAN}------------------------------------------------------------------------------------------------------------------------------------------------${NC}"

