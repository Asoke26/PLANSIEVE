SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 7
AND v.BountyAmount >= 50.0
AND u.DownVotes <= 60
AND v.CreationDate <= 414
AND u.CreationDate >= 43
AND u.CreationDate <= 829

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;