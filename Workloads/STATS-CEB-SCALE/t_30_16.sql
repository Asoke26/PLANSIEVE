SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 38
AND p.AnswerCount <= 19.0
AND v.CreationDate <= 1025
AND b.Date >= 1409
AND b.Date <= 1514
AND u.CreationDate >= 269

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;