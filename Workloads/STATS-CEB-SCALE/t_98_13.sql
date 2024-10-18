SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 1
AND p.ViewCount >= 294.0
AND u.Reputation <= 1061
AND u.UpVotes >= 24

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;