SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 890
AND u.Views <= 139
AND u.UpVotes >= 296
AND c.CreationDate >= 572
AND c.CreationDate <= 1535
AND u.CreationDate >= 42

AND c.UserId = u.Id
AND ph.UserId = u.Id;