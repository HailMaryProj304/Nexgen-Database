/* This file creates the constraints for nexgen financials database 
	
	Created:		January 11, 2021
	Written by: 	Andre Colaris								*/
	
ALTER TABLE ngf_clients
ADD CONSTRAINT check_provincal_code check (province in ('AB', 'BC', 'NL', 'PE', 'NS', 'NB', 'QC', 'ON',
	'MB', 'SK', 'YT', 'NT', 'NU'))
;

ALTER TABLE ngf_policies
ADD CONSTRAINT fk_client_id_policy FOREIGN KEY (client)
	REFERENCES ngf_clients(client_id)
;

ALTER TABLE ngf_summaries
ADD CONSTRAINT fk_client_id_summary FOREIGN KEY (client_id)
	REFERENCES ngf_clients(client_id)
;
