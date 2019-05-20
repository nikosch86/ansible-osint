# standalone-ansible osint

dockerized standalone ansible deployment to prepare cloud instances for OSINT tasks, based on nikosch86/ansible-docker.  
install, run and collect output.  

bootstrapping:  
`docker-compose run control-machine ansible-playbook -i <IP>, bootstrap.yml`  

example run:  
`
docker-compose run control-machine ansible-playbook -i <IP>, -e 'TARGET=<website.tld> HUNTER_API_KEY=<api key> SECURITYTRAILS_API_KEY=<api key>' osint.yml
`  

output of the tools can be found in `workdir/output/<TARGET>`  
