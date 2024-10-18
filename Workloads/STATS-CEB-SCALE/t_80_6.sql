SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 7
AND p.AnswerCount <= 136.0
AND p.CommentCount >= 3
AND p.CommentCount <= 30
AND p.FavoriteCount <= 60.0
AND u.Reputation >= 738

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;