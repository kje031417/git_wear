-- 1) ���ǰԽ��� ���̺�
create table inquiry (
    inquiry_code number,	                        --���Ǳ� ��ȣ
	user_id varchar2(15) not null,	                --ȸ�� id
	inquiry_subject varchar2(100) not null,	        --����
	inquiry_content varchar2(100) not null,	        --����
	re_ref number not null,	                        --���� �� ��ȣ
	re_lev number not null,	                        --��� ����
	re_seq number not null,	                        --���� �� �� ��¼���
	inquiry_readcount number not null,             	--��ȸ��
	inquiry_date date,        	                    --�ۼ���
    primary key(inquiry_code)
);

-- 2) ���̺� ����
drop table inquiry purge;

-- 3) ���̺� Ȯ��
select * from tab;

-- 4) ������ ��ü ����
create sequence inquiry_code nocycle nocache;

-- 5) ������ ��ü ����
drop sequence inquiry_code;

-- 6) ������ �����ϱ�
insert into inquiry 
values(inquiry_code.nextval, 'hong1234', 'subject', 'content', 
inquiry_code.currval, 0, 0, 0, sysdate);    -- currval : ���� �������� �о����

-- 7) ��ü ���� Ȯ��
select * from inquiry order by inquiry_code asc;

-- 8) �� ������ 1�� �̾ƿ���
select * from inquiry where inquiry_code=1;

-- 9) ������ ����
delete inquiry where inquiry_code=3;

-- 10) db ����
commit;

-- 11) ��ȸ�� ����
update inquiry set inquiry_readcount = inquiry_readcount + 1 where inquiry_code=1;

-- 12) �۾������� Ȯ�� : session id �� db�� ��ϵ� �Խù� �ۼ��� id�� ��ġ
select * from inquiry where inquiry_code=45;

-- 13) �� ����
update inquiry set inquiry_subject='test1', inquiry_content='content1'
where inquiry_code=1;

-- 14) ��� ����
---- 1.�������� re_seq�� ���� : ���ۺ��� ū re_seq���� 1�� ����
update inquiry set re_seq = re_seq + 1
where re_ref=0 and re_seq>0;

---- 2.��� ����
---- re_ref = ������ re_ref
---- re_lev = ������ re_lev + 1
---- re_seq = ������ re_seq + 1
insert into inquiry values
(inquiry_code.nextval, 'id', '��ǰ��ȣ', '����', '����', 1, 1, 1, 0, sysdate);

-- 16) ��ۿ� ���� �ε��� ��
---- => re_ref ���� ��������, ���� ������ re_seq ���� ������������ ���Ľ�Ŵ
select * from
(select rownum rn, tt.* from
(select * from inquiry order by re_ref desc, re_seq asc) tt)
where rn>=1 and rn<=3;

-- 19) �����ϱ�
delete inquiry where inquiry_code=127;
