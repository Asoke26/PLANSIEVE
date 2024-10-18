SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 87
AND u.Views <= 46
AND u.UpVotes >= 314
AND c.CreationDate >= 172
AND c.CreationDate <= 1384
AND u.CreationDate >= 147

AND c.UserId = u.Id
AND ph.UserId = u.Id;