SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.AnswerCount >= 2.0
AND p.AnswerCount <= 8.0
AND p.CreationDate <= 1145
AND b.Date <= 666

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;