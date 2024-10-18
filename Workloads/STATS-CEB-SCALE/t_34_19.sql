SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 7
AND v.BountyAmount >= 75.0
AND u.DownVotes <= 8
AND v.CreationDate <= 1274
AND u.CreationDate >= 432
AND u.CreationDate <= 1032

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;