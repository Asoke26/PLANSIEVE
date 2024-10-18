SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.AnswerCount >= 19.0
AND p.AnswerCount <= 23.0
AND p.CreationDate <= 1422
AND b.Date <= 1248

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;