SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE c.Score = 8
AND u.Views <= 515
AND u.DownVotes >= 8
AND c.CreationDate >= 987
AND c.CreationDate <= 1475
AND u.CreationDate <= 1216

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;