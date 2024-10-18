SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE c.Score = 16
AND p.Score >= 71

AND u.Id = ph.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = c.UserId;