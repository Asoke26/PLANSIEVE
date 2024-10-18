SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.ViewCount >= 854.0
AND p.ViewCount <= 3604.0

AND c.UserId = u.Id
AND u.Id = p.OwnerUserId;