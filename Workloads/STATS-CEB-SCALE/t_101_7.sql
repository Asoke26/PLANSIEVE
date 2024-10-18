SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.AnswerCount >= 10.0
AND p.AnswerCount <= 27.0
AND p.CreationDate <= 32
AND b.Date <= 685

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;