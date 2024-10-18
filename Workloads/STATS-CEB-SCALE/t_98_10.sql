SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 6
AND p.ViewCount >= 1220.0
AND u.Reputation <= 1318
AND u.UpVotes >= 458

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;