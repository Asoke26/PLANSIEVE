SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 15
AND v.BountyAmount >= 150.0
AND v.BountyAmount <= 350.0
AND u.UpVotes >= 74
AND u.UpVotes <= 196
AND v.CreationDate >= 665

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;