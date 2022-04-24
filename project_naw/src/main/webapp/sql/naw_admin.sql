-- admin(������ ���̺�)

-- 1) ���̺� ����
create table admin (
    admin_id varchar2(15) primary key,  -- ������ ���̵�
    admin_pwd varchar2(16) not null,    -- ������ ��й�ȣ
    admin_name varchar2(20)             -- ������ �̸�
);

-- 2) ���̺� ���ֱ�
drop table admin purge;

-- 3) ���̺� ���
select * from tab;

-- 4) ������ �����ϱ�
insert into admin values ('admin1', 'admin1', 'admin1');
insert into admin values ('admin2', 'admin2', 'admin2');

-- 5) ��ü ���� Ȯ��
select * from admin;

-- 6) ������ id�� ���� Ȯ��
select * from admin where admin_id='admin1';
select * from admin where admin_id='admin2';

-- 7) ������ ����
update admin set admin_pwd='admin11', admin_name='admin11' where admin_id='admin1';

-- 8) ������ ����
delete admin where admin_id='admin1';

-- 9) db ����
commit;

-- 10) �ε��� ��
-- hidden column => rownum
select * from
(select rownum rn, tt.* from
(select * from admin order by admin_id asc) tt)
where rn>=1 and rn<=5;

-- 11) �ѵ����� ���� ���ϱ�
select count(*) as cnt from admin;
