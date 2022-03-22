## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![TODO: Update the path with the name of your diagram](diagrams/elk_stack_diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the YAML file may be used to install only certain pieces of it, such as Filebeat.

![elk_playbook.yml](ansible/elk_playbook.yml)

![Hosts](ansible/hosts)

![filebeat-config.yml](ansible/filebeat-config.yml)

![filebeat-playbook.yml](ansible/filebeat-playbook.yml)

![metricbeat-config.yml](ansible/metricbeat-config.yml)

![metricbeat-playbook.yml](ansible/metricbeat-playbook.yml)

These documents contain the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.

- Load balancers defend an organization against Digital Denial of Service (DDoS) attacks by helping servers move data efficiently, optimizing the use of application delivery resources, and preventing server overloads by spreading the load evenly between multiple servers.
-The advantage of a jump box is that it provides a single point of entry and exit within the network, securing and configuring the internal network from the external network.  

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the network and system configuration.

- Filebeat monitors the log files or locations that are specified, collects log events, and forwards them to either Elasticsearch or Logstash. Filebeat consists of two main components: inputs and harvesters. The Harvester is responsible for reading the content of a single file, line by line, and sending the content to the output. An input is responsible for managing the harvesters and finding all sources to read from.
- Metricbeat takes the metrics and statistics that it collects and ships them to the output that you specify, such as Elasticsearch or Logstash. Metricbeat helps you monitor your servers by collecting metrics from the system and services running on the server. 

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name       	| Function                  | IP Address 	| Operating System     		
|-------------|---------------------------|-------------|----------------------		
| Jump Box   	| gateway                   | 10.1.0.4   	| Linux (Ubuntu 18.04)  	
| Web-1      	| Traffic Monitoring        | 10.1.0.5   	| Linux (Ubuntu 18.04) 		
| Web-2      	| Traffic Monitoring        | 10.1.0.6   	| Linux (Ubuntu 18.04) 		
| Web-3      	| Traffic Monitoring        | 10.1.0.7   	| Linux (Ubuntu 18.04) 		
| ELK Server 	| Data Analytics Aggregation| 10.0.0.4   	| Linux (Ubuntu 18.04) 


### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: Add whitelisted IP addresses_

Machines within the network can only be accessed by the Jump box provisioner with the corresponding ansible container at IP address 10.1.0.4.

A summary of the access policies in place can be found in the table below.

| Name       	| Publicly Accessable | Allowed IP Addresses     |
|-------------|---------------------|--------------------------|
| Jump Box   	| Yes                 | SSH from whitelisted IP  |
| Web-1      	| No                  |                          |
| Web-2      	| No                  |                          |
| Web-3      	| No                  |                          |
| ELK Server 	| Yes                 | SSH from whitelisted IP  |


### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because this reduces time to deployment time per container, allows for scalable deployment, and eliminates manual configuration entry errors.

The playbook implements the following tasks:

- installs the following modules within the container: docker.io, pip3, install docker python module. 
- Configures sysctl modules, increases system memory, downloads and launches a docker ELK container.
- Launches the container using the published ports 5601:5601, 9200:9200, and 5044:5044

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1: 10.1.0.5
- Web-2: 10.1.0.6
- Web-3: 10.1.0.7

We have installed the following Beats on these machines:
- filebeat (version 7.6.2) and metricbeat (version 7.6.1) are installed on the ELK-Server, Web-1, Web-2, and Web-3.

These Beats allow us to collect the following information from each machine:
- Filebeat collects log events and forwards them to either Elasticsearch or Logstash.Metricbeat takes the metrics and statistics that it collects and ships them to the output that you specify, such as Elasticsearch or Logstash. Metricbeat helps you monitor your servers by collecting metrics from the system and services running on the server.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
