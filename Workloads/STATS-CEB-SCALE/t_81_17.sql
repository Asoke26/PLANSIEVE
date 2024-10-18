SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 176
AND u.Views <= 328
AND u.UpVotes >= 56
AND c.CreationDate >= 462
AND c.CreationDate <= 1200
AND u.CreationDate >= 742

AND c.UserId = u.Id
AND ph.UserId = u.Id;