SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.AnswerCount >= 8.0
AND p.AnswerCount <= 58.0
AND p.CreationDate <= 879
AND b.Date <= 502

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;