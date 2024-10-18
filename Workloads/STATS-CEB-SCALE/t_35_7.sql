SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 6
AND v.BountyAmount >= 100.0
AND v.BountyAmount <= 200.0
AND u.UpVotes >= 41
AND u.UpVotes <= 3079
AND v.CreationDate >= 1169

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;