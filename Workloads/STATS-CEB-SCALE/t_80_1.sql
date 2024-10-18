SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 3
AND p.AnswerCount <= 2.0

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;