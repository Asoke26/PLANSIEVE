SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 33
AND p.ViewCount >= 2230.0
AND p.ViewCount <= 3438.0
AND p.AnswerCount >= 1.0

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;