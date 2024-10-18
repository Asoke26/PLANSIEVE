SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= -1
AND p.AnswerCount <= 19.0
AND v.CreationDate <= 859
AND b.Date >= 412
AND b.Date <= 1414
AND u.CreationDate >= 259

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;