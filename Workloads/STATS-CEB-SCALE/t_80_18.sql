SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 15
AND p.AnswerCount <= 15.0

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;