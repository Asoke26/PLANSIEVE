SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 30
AND p.AnswerCount <= 35.0
AND p.CommentCount >= 2
AND p.CommentCount <= 30
AND p.FavoriteCount <= 39.0
AND u.Reputation >= 245

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;