SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.AnswerCount >= 5.0
AND p.AnswerCount <= 23.0
AND p.CreationDate <= 257
AND b.Date <= 735

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;