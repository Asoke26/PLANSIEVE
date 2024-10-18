SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 3
AND p.ViewCount >= 254.0
AND u.Reputation <= 225
AND u.UpVotes >= 17

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;