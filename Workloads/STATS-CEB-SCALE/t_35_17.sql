SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 40
AND v.BountyAmount >= 25.0
AND v.BountyAmount <= 150.0
AND u.UpVotes >= 26
AND u.UpVotes <= 3274
AND v.CreationDate >= 1069

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;