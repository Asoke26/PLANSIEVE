SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= -8
AND p.ViewCount >= 1024.0
AND p.ViewCount <= 1818.0
AND p.AnswerCount >= 7.0

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;