SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 548
AND u.Views <= 764
AND u.UpVotes >= 2468
AND c.CreationDate >= 494
AND c.CreationDate <= 1180
AND u.CreationDate >= 247

AND c.UserId = u.Id
AND ph.UserId = u.Id;