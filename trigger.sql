--Trigger has two main types: After Trigger and Instead Of Trigger

--Instead of Insert -->> DELETED table is always empty and the INSERTED table contains the newly inserted data.
--Instead of Delete -->> INSERTED table is always empty and the DELETED table contains the rows deleted.
--Instead of Update -->> DELETED table contains OLD data before modify,and inserted table contains NEW data and Updated data. 