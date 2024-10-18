SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE c.Score = 11
AND u.Views <= 666
AND u.DownVotes >= 5
AND c.CreationDate >= 421
AND c.CreationDate <= 1408
AND u.CreationDate <= 1127

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;