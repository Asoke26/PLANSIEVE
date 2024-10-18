SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 0
AND v.BountyAmount >= 250.0
AND u.DownVotes <= 110
AND v.CreationDate <= 1234
AND u.CreationDate >= 235
AND u.CreationDate <= 566

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;