SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.AnswerCount >= 5.0
AND p.AnswerCount <= 14.0
AND p.CreationDate <= 438
AND b.Date <= 1448

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;