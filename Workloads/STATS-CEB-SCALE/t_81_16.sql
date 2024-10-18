SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 1161
AND u.Views <= 328
AND u.UpVotes >= 75
AND c.CreationDate >= 920
AND c.CreationDate <= 1460
AND u.CreationDate >= 165

AND c.UserId = u.Id
AND ph.UserId = u.Id;