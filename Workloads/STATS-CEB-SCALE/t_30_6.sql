SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 4
AND p.AnswerCount <= 6.0
AND v.CreationDate <= 570
AND b.Date >= 304
AND b.Date <= 549
AND u.CreationDate >= 313

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;