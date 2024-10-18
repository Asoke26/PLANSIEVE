SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 951
AND u.Views <= 180
AND u.UpVotes >= 84
AND c.CreationDate >= 1314
AND c.CreationDate <= 1428
AND u.CreationDate >= 1205

AND c.UserId = u.Id
AND ph.UserId = u.Id;