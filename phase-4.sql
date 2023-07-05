insert into customer values ("Harry","Kane","1234567810","London","London","212 Barker Street","44796268462");

update customer set phone_number="44734278008" where national_id="1234567810";

delete from customer where national_id not in (select customer_id from customer_order);