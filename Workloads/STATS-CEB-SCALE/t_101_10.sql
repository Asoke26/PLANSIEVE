SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.AnswerCount >= 14.0
AND p.AnswerCount <= 26.0
AND p.CreationDate <= 445
AND b.Date <= 788

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;