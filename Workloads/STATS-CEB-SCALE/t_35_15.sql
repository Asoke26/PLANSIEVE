SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 0
AND v.BountyAmount >= 25.0
AND v.BountyAmount <= 400.0
AND u.UpVotes >= 111
AND u.UpVotes <= 337
AND v.CreationDate >= 1403

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;