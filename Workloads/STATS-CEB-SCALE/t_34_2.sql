SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 0
AND v.BountyAmount >= 100.0
AND u.DownVotes <= 214
AND v.CreationDate <= 1338
AND u.CreationDate >= 223
AND u.CreationDate <= 746

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;