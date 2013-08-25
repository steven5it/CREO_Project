DROP SEQUENCE CREO_Escalation_seq ; 
create sequence CREO_Escalation_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_Escalation_PK_trig 
before insert on CREO_Escalation
for each row 
begin 
select CREO_Escalation_seq.nextval into :new.escalation_id from dual; 
end; 
/
alter table CREO_Escalation add dflex date ; 
alter table CREO_Escalation add iflex1 integer ; 
alter table CREO_Escalation add iflex2 integer ; 
alter table CREO_Escalation add vflex1 VARCHAR2 (4000) ; 
alter table CREO_Escalation add vflex2 VARCHAR2 (4000) ; 
alter table CREO_Escalation add vflex3 VARCHAR2 (4000) ; 
alter table CREO_Escalation add created date ; 
alter table CREO_Escalation add created_by VARCHAR2 (255) ; 
alter table CREO_Escalation add row_version_number integer ; 
alter table CREO_Escalation add updated date ; 
alter table CREO_Escalation add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_Escalation_AUD_trig 
before insert or update on CREO_Escalation 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

-- Table CREO_communication has a compound primary key so no sequence or trigger was created for it.
DROP SEQUENCE CREO_contact_seq ; 
create sequence CREO_contact_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_contact_PK_trig 
before insert on CREO_contact
for each row 
begin 
select CREO_contact_seq.nextval into :new.contact_id from dual; 
end; 
/
alter table CREO_contact add dflex date ; 
alter table CREO_contact add iflex1 integer ; 
alter table CREO_contact add iflex2 integer ; 
alter table CREO_contact add vflex1 VARCHAR2 (4000) ; 
alter table CREO_contact add vflex2 VARCHAR2 (4000) ; 
alter table CREO_contact add vflex3 VARCHAR2 (4000) ; 
alter table CREO_contact add created date ; 
alter table CREO_contact add created_by VARCHAR2 (255) ; 
alter table CREO_contact add row_version_number integer ; 
alter table CREO_contact add updated date ; 
alter table CREO_contact add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_contact_AUD_trig 
before insert or update on CREO_contact 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_cost_seq ; 
create sequence CREO_cost_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_cost_PK_trig 
before insert on CREO_cost
for each row 
begin 
select CREO_cost_seq.nextval into :new.cost_id from dual; 
end; 
/
alter table CREO_cost add dflex date ; 
alter table CREO_cost add iflex1 integer ; 
alter table CREO_cost add iflex2 integer ; 
alter table CREO_cost add vflex1 VARCHAR2 (4000) ; 
alter table CREO_cost add vflex2 VARCHAR2 (4000) ; 
alter table CREO_cost add vflex3 VARCHAR2 (4000) ; 
alter table CREO_cost add created date ; 
alter table CREO_cost add created_by VARCHAR2 (255) ; 
alter table CREO_cost add row_version_number integer ; 
alter table CREO_cost add updated date ; 
alter table CREO_cost add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_cost_AUD_trig 
before insert or update on CREO_cost 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_document_seq ; 
create sequence CREO_document_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_document_PK_trig 
before insert on CREO_document
for each row 
begin 
select CREO_document_seq.nextval into :new.id from dual; 
end; 
/
alter table CREO_document add dflex date ; 
alter table CREO_document add iflex1 integer ; 
alter table CREO_document add iflex2 integer ; 
alter table CREO_document add vflex1 VARCHAR2 (4000) ; 
alter table CREO_document add vflex2 VARCHAR2 (4000) ; 
alter table CREO_document add vflex3 VARCHAR2 (4000) ; 
alter table CREO_document add created date ; 
alter table CREO_document add created_by VARCHAR2 (255) ; 
alter table CREO_document add row_version_number integer ; 
alter table CREO_document add updated date ; 
alter table CREO_document add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_document_AUD_trig 
before insert or update on CREO_document 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_issue_seq ; 
create sequence CREO_issue_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_issue_PK_trig 
before insert on CREO_issue
for each row 
begin 
select CREO_issue_seq.nextval into :new.issue_id from dual; 
end; 
/
alter table CREO_issue add dflex date ; 
alter table CREO_issue add iflex1 integer ; 
alter table CREO_issue add iflex2 integer ; 
alter table CREO_issue add vflex1 VARCHAR2 (4000) ; 
alter table CREO_issue add vflex2 VARCHAR2 (4000) ; 
alter table CREO_issue add vflex3 VARCHAR2 (4000) ; 
alter table CREO_issue add created date ; 
alter table CREO_issue add created_by VARCHAR2 (255) ; 
alter table CREO_issue add row_version_number integer ; 
alter table CREO_issue add updated date ; 
alter table CREO_issue add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_issue_AUD_trig 
before insert or update on CREO_issue 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_item_esc_seq ; 
create sequence CREO_item_esc_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_item_esc_PK_trig 
before insert on CREO_item_esc
for each row 
begin 
select CREO_item_esc_seq.nextval into :new.item_esc_id from dual; 
end; 
/
alter table CREO_item_esc add dflex date ; 
alter table CREO_item_esc add iflex1 integer ; 
alter table CREO_item_esc add iflex2 integer ; 
alter table CREO_item_esc add vflex1 VARCHAR2 (4000) ; 
alter table CREO_item_esc add vflex2 VARCHAR2 (4000) ; 
alter table CREO_item_esc add vflex3 VARCHAR2 (4000) ; 
alter table CREO_item_esc add created date ; 
alter table CREO_item_esc add created_by VARCHAR2 (255) ; 
alter table CREO_item_esc add row_version_number integer ; 
alter table CREO_item_esc add updated date ; 
alter table CREO_item_esc add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_item_esc_AUD_trig 
before insert or update on CREO_item_esc 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_lease_seq ; 
create sequence CREO_lease_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_lease_PK_trig 
before insert on CREO_lease
for each row 
begin 
select CREO_lease_seq.nextval into :new.lease_id from dual; 
end; 
/
alter table CREO_lease add dflex date ; 
alter table CREO_lease add iflex1 integer ; 
alter table CREO_lease add iflex2 integer ; 
alter table CREO_lease add vflex1 VARCHAR2 (4000) ; 
alter table CREO_lease add vflex2 VARCHAR2 (4000) ; 
alter table CREO_lease add vflex3 VARCHAR2 (4000) ; 
alter table CREO_lease add created date ; 
alter table CREO_lease add created_by VARCHAR2 (255) ; 
alter table CREO_lease add row_version_number integer ; 
alter table CREO_lease add updated date ; 
alter table CREO_lease add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_lease_AUD_trig 
before insert or update on CREO_lease 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_lease_item_seq ; 
create sequence CREO_lease_item_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_lease_item_PK_trig 
before insert on CREO_lease_item
for each row 
begin 
select CREO_lease_item_seq.nextval into :new.item_ed from dual; 
end; 
/
alter table CREO_lease_item add dflex date ; 
alter table CREO_lease_item add iflex1 integer ; 
alter table CREO_lease_item add iflex2 integer ; 
alter table CREO_lease_item add vflex1 VARCHAR2 (4000) ; 
alter table CREO_lease_item add vflex2 VARCHAR2 (4000) ; 
alter table CREO_lease_item add vflex3 VARCHAR2 (4000) ; 
alter table CREO_lease_item add created date ; 
alter table CREO_lease_item add created_by VARCHAR2 (255) ; 
alter table CREO_lease_item add row_version_number integer ; 
alter table CREO_lease_item add updated date ; 
alter table CREO_lease_item add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_lease_item_AUD_trig 
before insert or update on CREO_lease_item 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_link_seq ; 
create sequence CREO_link_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_link_PK_trig 
before insert on CREO_link
for each row 
begin 
select CREO_link_seq.nextval into :new.link_id from dual; 
end; 
/
alter table CREO_link add dflex date ; 
alter table CREO_link add iflex1 integer ; 
alter table CREO_link add iflex2 integer ; 
alter table CREO_link add vflex1 VARCHAR2 (4000) ; 
alter table CREO_link add vflex2 VARCHAR2 (4000) ; 
alter table CREO_link add vflex3 VARCHAR2 (4000) ; 
alter table CREO_link add created date ; 
alter table CREO_link add created_by VARCHAR2 (255) ; 
alter table CREO_link add row_version_number integer ; 
alter table CREO_link add updated date ; 
alter table CREO_link add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_link_AUD_trig 
before insert or update on CREO_link 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_payment_seq ; 
create sequence CREO_payment_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_payment_PK_trig 
before insert on CREO_payment
for each row 
begin 
select CREO_payment_seq.nextval into :new.payment_id from dual; 
end; 
/
alter table CREO_payment add dflex date ; 
alter table CREO_payment add iflex1 integer ; 
alter table CREO_payment add iflex2 integer ; 
alter table CREO_payment add vflex1 VARCHAR2 (4000) ; 
alter table CREO_payment add vflex2 VARCHAR2 (4000) ; 
alter table CREO_payment add vflex3 VARCHAR2 (4000) ; 
alter table CREO_payment add created date ; 
alter table CREO_payment add created_by VARCHAR2 (255) ; 
alter table CREO_payment add row_version_number integer ; 
alter table CREO_payment add updated date ; 
alter table CREO_payment add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_payment_AUD_trig 
before insert or update on CREO_payment 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE CREO_property_seq ; 
create sequence CREO_property_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger CREO_property_PK_trig 
before insert on CREO_property
for each row 
begin 
select CREO_property_seq.nextval into :new.property_id from dual; 
end; 
/
alter table CREO_property add dflex date ; 
alter table CREO_property add iflex1 integer ; 
alter table CREO_property add iflex2 integer ; 
alter table CREO_property add vflex1 VARCHAR2 (4000) ; 
alter table CREO_property add vflex2 VARCHAR2 (4000) ; 
alter table CREO_property add vflex3 VARCHAR2 (4000) ; 
alter table CREO_property add created date ; 
alter table CREO_property add created_by VARCHAR2 (255) ; 
alter table CREO_property add row_version_number integer ; 
alter table CREO_property add updated date ; 
alter table CREO_property add updated_by VARCHAR2 (255) ; 
/
create or replace trigger CREO_property_AUD_trig 
before insert or update on CREO_property 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP INDEX contact_id_FK_0 ;
CREATE INDEX contact_id_FK_0 ON CREO_communication(contact_id) ;
DROP INDEX contact_person_FK_1 ;
CREATE INDEX contact_person_FK_1 ON CREO_contact(contact_person) ;
DROP INDEX contact_id_FK_2 ;
CREATE INDEX contact_id_FK_2 ON CREO_cost(contact_id) ;
DROP INDEX property_id_FK_3 ;
CREATE INDEX property_id_FK_3 ON CREO_cost(property_id) ;
DROP INDEX contact_id_FK_4 ;
CREATE INDEX contact_id_FK_4 ON CREO_document(contact_id) ;
DROP INDEX lease_id_FK_5 ;
CREATE INDEX lease_id_FK_5 ON CREO_document(lease_id) ;
DROP INDEX property_id_FK_6 ;
CREATE INDEX property_id_FK_6 ON CREO_document(property_id) ;
DROP INDEX contact_id_FK_7 ;
CREATE INDEX contact_id_FK_7 ON CREO_issue(contact_id) ;
DROP INDEX lease_id_FK_8 ;
CREATE INDEX lease_id_FK_8 ON CREO_issue(lease_id) ;
DROP INDEX property_id_FK_9 ;
CREATE INDEX property_id_FK_9 ON CREO_issue(property_id) ;
DROP INDEX escalation_id_FK_10 ;
CREATE INDEX escalation_id_FK_10 ON CREO_item_esc(escalation_id) ;
DROP INDEX item_ed_FK_11 ;
CREATE INDEX item_ed_FK_11 ON CREO_item_esc(item_ed) ;
DROP INDEX landlord_id_FK_12 ;
CREATE INDEX landlord_id_FK_12 ON CREO_lease(landlord_id) ;
DROP INDEX tenant_id_FK_13 ;
CREATE INDEX tenant_id_FK_13 ON CREO_lease(tenant_id) ;
DROP INDEX lease_id_FK_14 ;
CREATE INDEX lease_id_FK_14 ON CREO_lease_item(lease_id) ;
DROP INDEX property_id_FK_15 ;
CREATE INDEX property_id_FK_15 ON CREO_lease_item(property_id) ;
DROP INDEX contact_id_FK_16 ;
CREATE INDEX contact_id_FK_16 ON CREO_link(contact_id) ;
DROP INDEX lease_id_FK_17 ;
CREATE INDEX lease_id_FK_17 ON CREO_link(lease_id) ;
DROP INDEX property_id_FK_18 ;
CREATE INDEX property_id_FK_18 ON CREO_link(property_id) ;
DROP INDEX contact_id_FK_19 ;
CREATE INDEX contact_id_FK_19 ON CREO_payment(contact_id) ;
DROP INDEX item_ed_FK_20 ;
CREATE INDEX item_ed_FK_20 ON CREO_payment(item_ed) ;
