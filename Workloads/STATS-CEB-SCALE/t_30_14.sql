SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 192
AND p.AnswerCount <= 56.0
AND v.CreationDate <= 1185
AND b.Date >= 175
AND b.Date <= 580
AND u.CreationDate >= 382

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;