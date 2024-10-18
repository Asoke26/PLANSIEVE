SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 8
AND v.BountyAmount >= 0.0
AND u.DownVotes <= 214
AND v.CreationDate <= 817
AND u.CreationDate >= 135
AND u.CreationDate <= 1430

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;