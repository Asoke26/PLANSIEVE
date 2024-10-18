SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE c.Score = 3
AND u.Views <= 984
AND u.DownVotes >= 56
AND c.CreationDate >= 485
AND c.CreationDate <= 1519
AND u.CreationDate <= 1267

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;