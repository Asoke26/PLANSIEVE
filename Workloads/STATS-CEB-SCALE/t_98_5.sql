SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 3
AND p.ViewCount >= 3961.0
AND u.Reputation <= 1249
AND u.UpVotes >= 87

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;