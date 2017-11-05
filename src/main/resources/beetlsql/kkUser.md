selectAll
===
select * from kk_user

findByName
===
select username, password from kk_user where 1=1
@if(!isEmpty(username)){
and username = #username#
@}