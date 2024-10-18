SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 0
AND p.ViewCount >= 2633.0
AND u.Reputation <= 1001
AND u.UpVotes >= 223

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;