/* This file populates the tables for the Nexgen Financial database

Created: February 11, 2021
Written by: Cole Kepford*/

INSERT INTO ngf_clients VALUES (
    client_id_seq.NEXTVAL, 'dour.handel@gmail.com', 'Dour', 'Handel', DATE '1969-04-20', '1234567890', '420 Blazeit Ave SE', 'AB', 'Canada', 'T3Y0R5'
);

INSERT INTO ngf_policies VALUES (
    policy_id_seq.NEXTVAL, client_id_seq.CURRVAL, 'MN-4567', 'Dour', 'Handel', 'Manulife', 'Term 10 Life', 500000.00, DATE '2015-01-25', '2025-01-25'
);

INSERT INTO ngf_summaries VALUES (
    summary_id_seq.NEXTVAL, client_id_seq.CURRVAL, 'Dour', 'Handel', '/summaries/dour_handel_summary.xls'
);

INSERT INTO ngf_clients VALUES (
    client_id_seq.NEXTVAL, 'bob.sapporu@totallynotdoping.com', 'Bob', 'Sapp', DATE '1973-07-02', '0987654321', '99 Giantdude St NW', 'AB', 'Canada', 'T7Y2W5'
);

INSERT INTO ngf_policies VALUES (
    policy_id_seq.NEXTVAL, client_id_seq.CURRVAL, 'IA-4544', 'Bob', 'Sapp', 'Industrial Alliance', 'Universal Life', 1200000.00, DATE '2010-05-13', 'until death'
);

INSERT INTO ngf_summaries VALUES (
    summary_id_seq.NEXTVAL, client_id_seq.CURRVAL, 'Bob', 'Sapp', '/summaries/bob_sapp_summary.xls'
);

INSERT INTO ngf_administrators VALUES (
    employee_id_seq.NEXTVAL, 1, 'dann.kepford@nexgenfinancial.com', 'Dann', 'Kepford'
);





