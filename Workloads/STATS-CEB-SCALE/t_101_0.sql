SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.AnswerCount >= 28.0
AND p.AnswerCount <= 56.0
AND p.CreationDate <= 1455
AND b.Date <= 985

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;