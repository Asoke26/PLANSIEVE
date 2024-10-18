SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 5
AND v.BountyAmount >= 150.0
AND u.DownVotes <= 3
AND v.CreationDate <= 1537
AND u.CreationDate >= 299
AND u.CreationDate <= 1087

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;