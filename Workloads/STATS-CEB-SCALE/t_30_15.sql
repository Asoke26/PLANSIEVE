SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 89
AND p.AnswerCount <= 13.0
AND v.CreationDate <= 1424
AND b.Date >= 204
AND b.Date <= 1172
AND u.CreationDate >= 960

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;