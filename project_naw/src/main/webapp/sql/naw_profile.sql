-- Naw Project
-----------------------------------------------------------------------------
-- * ȸ�����̺�
create table profile (
    user_id varchar2(15) not null,	    --���̵�
    user_pwd varchar2(16) not null,	    --��й�ȣ
    user_name varchar2(20) not null,	--�̸�
    user_phone varchar2(15) not null,	--��ȭ��ȣ
    user_email varchar2(70) not null,   --�̸���
    user_addr1 varchar2(150) not null,	--�ּ�
    user_addr2 varchar2(150) not null,	--���ּ�
    user_joindate date default sysdate,	--������
    user_gender	varchar2(10) not null,	--����
    user_birth	date not null,	        --�������
    primary key(user_id)
    );

-- ���̺� ���
select * from tab;
select * from profile;

-- ���̺� ����
drop table profile purge;

-- (ȸ������) ID�ߺ� Ȯ��
select * from profile where user_id='naw';

-- (ȸ������) ������ �����ϱ�
insert into profile values ('naw', 'Nawisback88', '����', '01034229999', 
'naw@naw.com', '����Ư���� ���ʱ� ���ʴ��77�� 30', '32F Naw Inc', sysdate, 'M', To_Date('1987-04-03', 'yyyy-mm-dd'));

-- ������ ������ ����
insert into profile values ('naw', 'Nawisback88', '����', '01034229999', 
'naw@naw.com', '����Ư���� ���ʱ� ���ʴ��77�� 30', '32F Naw Inc', sysdate, 'M', To_Date('1987-04-03', 'yyyy-mm-dd'));

-- (�α���) �α���
select * from profile where user_id='naw' and user_pwd='Nawisback77';
-- SELECT COUNT(*) FROM profile WHERE user_id = #{user_id} AND user_pwd = #{user_pwd}
SELECT COUNT(*) FROM profile WHERE user_id='naw' and user_pwd='Nawisback77';

-- (�α���) ���̵� ã��
select user_id from profile where user_name='����' and user_email='naw@naw.com';

-- (�α���) ��й�ȣ ã�� ������ġ���� Ȯ��
select * from profile where user_id = 'naw' and user_name = '����' and user_email = 'naw@naw.com';

-- (�α���) ��й�ȣ �ʱ�ȭ
update profile set user_pwd='Nawisback77' where user_id='naw';

-- (����������) ȸ����������
update profile set user_pwd='Nawisback55', user_phone='01034227777', user_email='naw@naw.com', user_addr1='����Ư���� ���ʱ� ���ʴ��77�� 30', user_addr2='32F Naw Inc' where user_id='naw' and user_pwd='Nawisback77';

-- (����������) ȸ��Ż��
delete profile where user_id='naw';
 
--  db ����
commit;
