SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 6
AND p.AnswerCount <= 6.0
AND v.CreationDate <= 369
AND b.Date >= 213
AND b.Date <= 1252
AND u.CreationDate >= 163

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;