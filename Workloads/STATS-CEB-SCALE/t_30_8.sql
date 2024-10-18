SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 61
AND p.AnswerCount <= 56.0
AND v.CreationDate <= 1238
AND b.Date >= 335
AND b.Date <= 1352
AND u.CreationDate >= 233

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;