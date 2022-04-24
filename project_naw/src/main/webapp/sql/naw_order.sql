create table order_page(
    ord_date date not null,                        -- �ֹ� ��¥
    ord_number number not null,                    -- �ֹ� ��ȣ(������)
    ord_code varchar2(100) not null,               -- ��ǰ ��ȣ
    ord_name varchar2(100) not null,               -- ��ǰ �̸�
    ord_color varchar(20) not null,                -- ����
    ord_size varchar(20) not null,                 -- ������
    ord_image varchar(100) not null,               -- �̹���
    ord_price number(20) not null,                 -- ��ǰ ���� �ݾ�
    ord_qty number(10) not null,                   -- ��ǰ ����
    ord_totalprice number(20) not null,            -- total �ݾ�
    user_id	varchar2(15) not null,                 -- ȸ�� id
    user_name varchar2(20) not null,               -- �ֹ��� �̸�
    ord_addr1 varchar2(150) not null,              -- �ּ�
    ord_addr2 varchar2(150) not null,              -- ���ּ�
    ord_payment	varchar(20) not null,              -- ���� ����
    primary key (ord_number)
);  

drop table order_page purge;

create sequence seq_order nocache nocycle;

drop sequence seq_order;

insert into order_page values(sysdate, seq_order.nextval, '1234', '����Ű��ť���󿡾��ܺ�����14����'
, 'white', '265', 'image', 55000, 1, 57000, 'user_id', 'user_name', '�����', '������', 'payco');

select count(*) as cnt from order_page where user_id='1234';

select * from order_page;
select * from order_page where ord_number='1';
select * from order_page order by ord_number desc;

select * from
(select rownum rn, tt.* from
(select * from order_page order by ord_number desc) tt)     --�������� ����
where rn>=1 and rn<=3 and user_id='hong';

update order_page set item_name='���õ�' where ord_qty=1;    -- ����

-- ��ǰ���� 0���� ��ǰ�� ����
delete order_page where ord_qty=0;

commit;