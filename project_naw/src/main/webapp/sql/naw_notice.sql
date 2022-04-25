-- notice(���� ���̺�)

-- 1) ���̺� ����
create table notice (
    notice_seq number primary key,          -- ������ ��ȣ(������)
    notice_date date default sysdate,       -- ���� ������Ʈ ��¥(�����)
    notice_title varchar2(100) not null,    -- ���� ����
    notice_content varchar2(3000) not null  -- ���� ����
);

-- 2) ���̺� ���ֱ�
drop table notice purge;

-- 3) ���̺� ���
select * from tab;

-- 4) ������ ��ü ����
create sequence seq_notice nocache nocycle;

-- 5) ������ ��ü ����
drop sequence seq_notice;

-- 6) ������ �����ϱ�
insert into notice values (seq_notice.nextval, sysdate, '��������', '��������');

-- 7) ��ü ���� Ȯ��
select * from notice;

-- 8) ������ ��ȣ(������)�� ���� Ȯ��
select * from notice where notice_seq=1;

-- 9) ������ ����
update notice set notice_title='�����������', notice_content='�����������' where notice_seq=1;

-- 10) ������ ����
delete notice where notice_seq=1;

-- 11) db ����
commit;

-- 12) �ε��� ��
-- hidden column => rownum
select * from
(select rownum rn, tt.* from
(select * from notice order by notice_seq desc) tt)
where rn>=1 and rn<=5;

-- 13) �ѵ����� ���� ���ϱ�
select count(*) as cnt from notice;
