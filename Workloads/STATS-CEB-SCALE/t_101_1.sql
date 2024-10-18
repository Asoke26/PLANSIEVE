SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.AnswerCount >= 0.0
AND p.AnswerCount <= 8.0
AND p.CreationDate <= 1326
AND b.Date <= 639

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;