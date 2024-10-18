SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 4
AND p.ViewCount >= 848.0
AND p.ViewCount <= 1474.0
AND p.AnswerCount >= 12.0

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;