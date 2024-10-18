SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= -7
AND p.AnswerCount <= 1.0
AND v.CreationDate <= 712
AND b.Date >= 470
AND b.Date <= 953
AND u.CreationDate >= 176

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;