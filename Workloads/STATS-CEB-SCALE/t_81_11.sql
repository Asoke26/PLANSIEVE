SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 75
AND u.Views <= 378
AND u.UpVotes >= 252
AND c.CreationDate >= 288
AND c.CreationDate <= 1520
AND u.CreationDate >= 655

AND c.UserId = u.Id
AND ph.UserId = u.Id;