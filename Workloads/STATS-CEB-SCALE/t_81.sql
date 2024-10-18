SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation>=1
AND u.Views<=80
AND u.UpVotes>=0
AND c.CreationDate>=48
AND c.CreationDate<=1541
AND u.CreationDate>=41

AND c.UserId = u.Id
AND ph.UserId = u.Id;