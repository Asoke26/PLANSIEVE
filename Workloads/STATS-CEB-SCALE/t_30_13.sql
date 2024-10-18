SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 79
AND p.AnswerCount <= 14.0
AND v.CreationDate <= 978
AND b.Date >= 743
AND b.Date <= 1235
AND u.CreationDate >= 334

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;