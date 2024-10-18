SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 57
AND p.ViewCount >= 332.0
AND p.ViewCount <= 24319.0
AND p.AnswerCount >= 18.0

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;