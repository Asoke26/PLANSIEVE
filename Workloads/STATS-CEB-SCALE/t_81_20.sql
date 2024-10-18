SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 133
AND u.Views <= 1244
AND u.UpVotes >= 25
AND c.CreationDate >= 981
AND c.CreationDate <= 1484
AND u.CreationDate >= 595

AND c.UserId = u.Id
AND ph.UserId = u.Id;