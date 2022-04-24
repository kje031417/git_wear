-- 1) ��ٱ��� ���̺�
create table cart (
	user_id varchar2(15) not null,	        --ȸ��id
    cart_seq number,	                    --������
	item_code varchar2(100) not null,	    --��ǰ��ȣ
	item_name varchar2(100) not null,	    --��ǰ�̸�
	item_color varchar(20) not null,	    --����
	item_size varchar(20) not null,	        --������
    item_image varchar2(100) not null,      --��ǰ�̹���
	item_price number(20) not null,	        --��ǰ�������� �ݾ�
	cart_qty number(10) not null,	        --��ǰ����
	cart_totalprice number(20) not null,    --total �ݾ�
    primary key(cart_seq)       
);

-- 2) ���̺� ����
drop table cart purge;

-- 3) ���̺� Ȯ��
select * from tab;

-- 4) ������ ��ü ����
create sequence cart_seq nocycle nocache;

-- 5) ������ ��ü ����
drop sequence cart_seq;

-- 6) ������ �����ϱ�
insert into cart 
values('hong', cart_seq.nextval, '001', 'test', 'black', 'S', 'aa.jpg', 10, 1000, 10000);

-- 7) ��ü ���� Ȯ��
select * from cart order by cart_seq desc;

-- 8) Ư�� �۹�ȣ�� ���� Ȯ��
select * from cart where cart_seq=1;
select * from cart where user_id = 'hong';

-- 9) ������ ����
update cart set 
item_code='0001', item_size='M',
cart_qty=3, cart_totalprice=30000 where cart_seq=1;

update cart set 
item_code='0001' where cart_seq=2;

-- 10) ������ ����
delete cart where cart_seq=3;

-- 11) db ����
commit;

-- 12) �ε��� ��
-- hidden column => rownum
select * from
(select rownum rn, tt.* from
(select * from cart order by cart_seq desc) tt)     --�������� ����
where rn>=1 and rn<=3 and user_id='hong';

-- 13) �ѵ����� ���� ���ϱ�
select count(*) as cnt from cart where user_id='lee333';

-- 14) Ư�� ȸ���� ��ٱ��� �� ��ǰ �ݾ� ���ϱ�
select sum(cart_totalprice) from cart where user_id='hong';

-- 15) Ư�� ��ǰ�� ī�װ� �ҷ�����
select item_category1, item_category2 
from itemView where item_code = '0001';

-- 16) ��õ��ǰ 5�� �ҷ�����
select * from
(select rownum rn, tt.* from
(select * from itemView order by item_seq desc) tt)     --�������� ����
where rn>=1 and rn<=5 and item_category1='MEN';


rollback;
