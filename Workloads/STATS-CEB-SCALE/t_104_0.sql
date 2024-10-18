SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE c.Score = 3
AND u.Views <= 126
AND u.DownVotes >= 17
AND c.CreationDate >= 491
AND c.CreationDate <= 1470
AND u.CreationDate <= 385

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;