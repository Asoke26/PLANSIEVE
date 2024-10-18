SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 2
AND v.BountyAmount >= 0.0
AND v.BountyAmount <= 300.0
AND u.UpVotes >= 1243
AND u.UpVotes <= 5007
AND v.CreationDate >= 1207

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;