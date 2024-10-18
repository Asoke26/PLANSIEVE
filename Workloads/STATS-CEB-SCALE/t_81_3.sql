SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 49
AND u.Views <= 160
AND u.UpVotes >= 95
AND c.CreationDate >= 927
AND c.CreationDate <= 1382
AND u.CreationDate >= 769

AND c.UserId = u.Id
AND ph.UserId = u.Id;