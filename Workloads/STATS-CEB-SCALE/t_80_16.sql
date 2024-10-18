SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 3
AND p.AnswerCount <= 8.0
AND p.CommentCount >= 12
AND p.CommentCount <= 45
AND p.FavoriteCount <= 25.0
AND u.Reputation >= 620

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;