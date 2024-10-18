SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 9
AND p.ViewCount >= 1125.0
AND u.Reputation <= 4767
AND u.UpVotes >= 91

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;