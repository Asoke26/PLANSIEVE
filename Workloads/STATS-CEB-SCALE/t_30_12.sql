SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 140
AND p.AnswerCount <= 23.0
AND v.CreationDate <= 1133
AND b.Date >= 288
AND b.Date <= 1092
AND u.CreationDate >= 824

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;