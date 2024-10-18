SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.AnswerCount >= 6.0
AND p.AnswerCount <= 19.0
AND p.CreationDate <= 992
AND b.Date <= 1467

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;