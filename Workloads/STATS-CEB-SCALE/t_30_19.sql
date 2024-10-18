SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 50
AND p.AnswerCount <= 56.0
AND v.CreationDate <= 655
AND b.Date >= 318
AND b.Date <= 478
AND u.CreationDate >= 152

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;