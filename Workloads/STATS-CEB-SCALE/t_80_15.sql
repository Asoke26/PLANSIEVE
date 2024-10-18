SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 19
AND p.AnswerCount <= 15.0
AND p.CommentCount >= 7
AND p.CommentCount <= 28
AND p.FavoriteCount <= 8.0
AND u.Reputation >= 53

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;