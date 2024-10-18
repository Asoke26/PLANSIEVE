SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 69
AND p.ViewCount >= 1262.0
AND p.ViewCount <= 12242.0
AND p.AnswerCount >= 18.0

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;