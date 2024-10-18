SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= -6
AND p.ViewCount >= 689.0
AND p.ViewCount <= 6785.0
AND p.AnswerCount >= 16.0

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;