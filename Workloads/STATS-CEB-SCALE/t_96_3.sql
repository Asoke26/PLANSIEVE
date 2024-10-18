SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 4
AND p.Score <= 106
AND p.ViewCount >= 1236.0
AND p.ViewCount <= 6705.0

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;