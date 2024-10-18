SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 5
AND p.ViewCount >= 201.0
AND u.Reputation <= 3533
AND u.UpVotes >= 196

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;