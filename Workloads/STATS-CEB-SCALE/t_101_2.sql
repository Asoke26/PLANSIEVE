SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.AnswerCount >= 26.0
AND p.AnswerCount <= 27.0
AND p.CreationDate <= 1505
AND b.Date <= 1145

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;