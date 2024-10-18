SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 16
AND v.BountyAmount >= 50.0
AND u.DownVotes <= 57
AND v.CreationDate <= 1524
AND u.CreationDate >= 288
AND u.CreationDate <= 1305

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;