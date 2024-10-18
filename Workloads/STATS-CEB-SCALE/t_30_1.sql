SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score <= 24
AND p.AnswerCount <= 19.0
AND v.CreationDate <= 1171
AND b.Date >= 191
AND b.Date <= 1125
AND u.CreationDate >= 186

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;