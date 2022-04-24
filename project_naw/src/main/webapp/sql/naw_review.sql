-- 1) ����Խ��� ���̺�
create table review(
    review_code number,	                    --����� ��ȣ
	user_id varchar2(15) not null,	        --ȸ�� id
    item_code varchar2(100) not null,       --��ǰ ��ȣ
	review_content varchar2(100) not null,	--����
	review_star number,	                    --����
	review_date date,	                    --�ۼ���
    primary key(review_code)
);

-- 2) ���̺� ����
drop table review purge;

-- 3) ���̺� Ȯ��
select * from tab;

-- 4) ������ ��ü ����
create sequence review_code nocycle nocache;

-- 5) ������ ��ü ����
drop sequence review_code;

-- 6) ������ �����ϱ�
insert into review 
values(review_code.nextval, 'hong1234', '002', 'content', 5, sysdate);

-- 7) ��ü ���� Ȯ��
select * from review order by review_code desc;

-- 8) Ư�� ��ǰ �ϳ��� ����� ��ƺ���
select * from review where item_code=002 order by review_code desc ;

select * from
(select rownum rn, tt.* from
(select * from review order by review_code desc) tt)
where rn>=1 and rn<=3 and item_code='002';

-- 9) ������ ����(����)
update review 
set review_content='content1', review_star=3 
where review_code=1;

-- 10) ������ ����
delete review where review_code=8;

-- 11) db ����
commit;

-- 12) �ε��� ��
-- hidden column => rownum
select * from
(select rownum rn, tt.* from
(select * from review order by review_code desc) tt)     --�������� ����
where rn>=1 and rn<=5;

-- 13) ��ü ������ ���� ���ϱ�
select count(*) as cnt from review;

-- 14) ��ǰ�� ����� �� �̾ƿ���
select count(*) as cnt from review where item_code='002';

-- 15) -- �� ������ �̾ƿ���
select * from review where review_code='2';