SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 498
AND u.Views <= 64
AND u.UpVotes >= 61
AND c.CreationDate >= 575
AND c.CreationDate <= 731
AND u.CreationDate >= 482

AND c.UserId = u.Id
AND ph.UserId = u.Id;