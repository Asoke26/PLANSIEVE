SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 38
AND p.AnswerCount <= 21.0
AND v.CreationDate <= 453
AND b.Date >= 561
AND b.Date <= 1340
AND u.CreationDate >= 366

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;