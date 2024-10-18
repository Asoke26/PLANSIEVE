SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 6
AND p.AnswerCount <= 18.0
AND v.CreationDate <= 1373
AND b.Date >= 49
AND b.Date <= 546
AND u.CreationDate >= 326

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;