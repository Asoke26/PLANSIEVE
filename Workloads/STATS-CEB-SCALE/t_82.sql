SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation>=1
AND u.Reputation<=7931
AND u.Views<=109
AND u.DownVotes>=0
AND u.CreationDate<=1543

AND c.UserId = u.Id
AND ph.UserId = u.Id;