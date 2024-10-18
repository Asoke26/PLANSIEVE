SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 5
AND v.BountyAmount >= 75.0
AND u.DownVotes <= 41
AND v.CreationDate <= 1008
AND u.CreationDate >= 418
AND u.CreationDate <= 1119

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;