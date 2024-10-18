SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE p.AnswerCount >= 7.0
AND p.AnswerCount <= 42.0

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;