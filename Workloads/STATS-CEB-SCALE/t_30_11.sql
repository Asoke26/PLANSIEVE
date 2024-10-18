SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 152
AND p.AnswerCount <= 6.0
AND v.CreationDate <= 652
AND b.Date >= 1189
AND b.Date <= 1447
AND u.CreationDate >= 33

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;