SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 48
AND p.AnswerCount <= 4.0
AND v.CreationDate <= 1010
AND b.Date >= 544
AND b.Date <= 1405
AND u.CreationDate >= 945

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;