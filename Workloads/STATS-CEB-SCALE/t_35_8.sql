SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 16
AND v.BountyAmount >= 25.0
AND v.BountyAmount <= 250.0
AND u.UpVotes >= 11
AND u.UpVotes <= 1146
AND v.CreationDate >= 916

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;