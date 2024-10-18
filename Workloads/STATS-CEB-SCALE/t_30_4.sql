SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 97
AND p.AnswerCount <= 24.0
AND v.CreationDate <= 1311
AND b.Date >= 224
AND b.Date <= 1317
AND u.CreationDate >= 260

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;