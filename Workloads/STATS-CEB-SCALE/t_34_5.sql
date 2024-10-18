SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 3
AND v.BountyAmount >= 300.0
AND u.DownVotes <= 3
AND v.CreationDate <= 1217
AND u.CreationDate >= 806
AND u.CreationDate <= 1538

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;