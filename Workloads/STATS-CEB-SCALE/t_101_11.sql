SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.AnswerCount >= 11.0
AND p.AnswerCount <= 58.0
AND p.CreationDate <= 323
AND b.Date <= 977

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;