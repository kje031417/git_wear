create table itemView (
    user_id	varchar2(15),                        -- ȸ�� id
    item_code varchar2(100),                     -- ��ǰ ��ȣ
    item_seq number(20) not null,                -- ������
    item_category1 varchar2(100) not null,       -- ī�װ�1(MEN/WOMEN/KIDS)
    item_category2 varchar2(100) not null,       -- ī�װ�2(�Ź�/�Ƿ�/��ǰ)
    item_category3 varchar2(100) not null,       -- ī�װ�3(����, ��, �౸, ����  / ����, Ƽ����, �ĵ�, ���� / �縻, ����, ����, �尩)
    item_name varchar2(1000),                    -- ��ǰ �̸�
    item_image1	varchar2(100),                   -- �̹��� 1(���� �̹���)
    item_image2	varchar2(100),                   -- �̹��� 2(�󼼺��� �̹���)
    item_details varchar2(3000),                 -- ����
    item_size varchar2(200),                     -- ������
    item_color varchar2(200),                    -- ����
    cart_qty number(10),                         -- ��ǰ����
    item_price number(20),                       -- ��ǰ ���� �ݾ�
    item_date date                               -- �����
);

drop table itemView purge;

create sequence seq_item nocache nocycle;

drop sequence seq_item;

insert into itemView values('1234', '0001',seq_item.nextval, 'MEN', '�Ź�', '����', '����Ű��ť���󿡾��ܺ�����14����', 
'����Ű��ť���󿡾��ܺ�����14����', '����Ű��ť���󿡾��ܺ�����14����', '����Ű ��ť���� ���� �� ������ 14 ���θ� �Ű� ��ħ���� ���ǵ带 �����ϼ���.',
'265', 'white', 10, 55000, sysdate); 

select count(*) as cnt from itemView;

select * from itemView;

-- ��ǰ �󼼺���
select user_id, item_code, item_seq, item_category1, item_category2, item_category3, item_name,      
item_details, item_image1, item_image2, item_price, item_color, item_size, cart_qty 
from itemView;

 -- ��ǰ ��Ϻ���

select item_code, item_seq, item_category1, item_category2, item_category3, item_name,              
item_details, item_image1, item_price, item_date, item_color, item_size
from itemView;

select * from itemView where item_category1='KIDS';

select * from itemView order by item_date asc;          -- ����� ���� ��������
select * from itemView order by item_date desc;         -- ����� ���� ��������

select * from itemView order by item_price asc;         -- ���� ���� ��������
select * from itemView order by item_price desc;        -- ���� ���� ��������
    
select * from itemView order by item_date asc;          -- ���� ���� ��������
select * from itemView order by item_date desc;         -- ���� ���� ��������

select * from
(select rownum rn, tt. * from
(select * from itemView order by item_seq desc)tt)
where rn>=1 and rn<=10;

-- ��ǰ ��� ����
select * from itemView where item_category1='KIDS' order by item_seq;

-- ���� �� join
select itemView.item_date, review.review_code
from itemView, reView
where itemView.item_date = review.review_code(+);               

select * from itemView where item_category1='KIDS' order by item_seq;
update itemView set item_image1='����_3_ī������_ ��_1.PNG', item_image2='����_3_ī������_ ��_2.PNG' where item_code='1030';  

delete itemView where cart_qty=0;

commit;

rollback;