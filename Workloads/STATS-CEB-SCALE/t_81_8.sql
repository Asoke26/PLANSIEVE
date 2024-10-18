SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 345
AND u.Views <= 38
AND u.UpVotes >= 9
AND c.CreationDate >= 869
AND c.CreationDate <= 1170
AND u.CreationDate >= 498

AND c.UserId = u.Id
AND ph.UserId = u.Id;