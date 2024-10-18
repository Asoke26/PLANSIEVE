SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.AnswerCount >= 4.0
AND p.AnswerCount <= 21.0
AND p.CreationDate <= 230
AND b.Date <= 1443

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;