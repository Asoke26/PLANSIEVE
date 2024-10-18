SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 4
AND p.AnswerCount <= 14.0
AND v.CreationDate <= 1062
AND b.Date >= 310
AND b.Date <= 761
AND u.CreationDate >= 164

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;