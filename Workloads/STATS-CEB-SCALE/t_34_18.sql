SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 6
AND v.BountyAmount >= 50.0
AND u.DownVotes <= 37
AND v.CreationDate <= 1276
AND u.CreationDate >= 189
AND u.CreationDate <= 348

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;