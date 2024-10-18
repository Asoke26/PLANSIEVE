SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 22
AND p.AnswerCount <= 10.0
AND p.CommentCount >= 0
AND p.CommentCount <= 29
AND p.FavoriteCount <= 57.0
AND u.Reputation >= 1683

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;