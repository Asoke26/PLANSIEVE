SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.AnswerCount >= 6.0
AND p.AnswerCount <= 13.0
AND p.CreationDate <= 250
AND b.Date <= 587

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;