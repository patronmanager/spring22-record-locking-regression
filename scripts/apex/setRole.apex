User adminUser = [SELECT Id, Name, Username FROM User WHERE Id = :UserInfo.getUserId() LIMIT 1];
UserRole r = [SELECT Id, Name from UserRole WHERE Name = 'Bogus'];
adminUser.UserRoleId = r.Id;
update adminUser;
