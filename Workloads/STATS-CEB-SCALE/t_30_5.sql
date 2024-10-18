SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 61
AND p.AnswerCount <= 35.0
AND v.CreationDate <= 1276
AND b.Date >= 1453
AND b.Date <= 1490
AND u.CreationDate >= 155

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;