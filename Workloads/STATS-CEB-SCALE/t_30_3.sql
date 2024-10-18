SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 85
AND p.AnswerCount <= 1.0
AND v.CreationDate <= 792
AND b.Date >= 421
AND b.Date <= 1514
AND u.CreationDate >= 662

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;