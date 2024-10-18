SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 0
AND p.AnswerCount <= 28.0

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;