SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 77
AND p.AnswerCount <= 28.0
AND v.CreationDate <= 1285
AND b.Date >= 258
AND b.Date <= 278
AND u.CreationDate >= 93

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;