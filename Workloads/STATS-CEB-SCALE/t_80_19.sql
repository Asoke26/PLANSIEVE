SELECT COUNT(*)
 FROM comments c,
posts p,
users u
WHERE c.Score = 4
AND p.AnswerCount <= 24.0
AND p.CommentCount >= 9
AND p.CommentCount <= 17
AND p.FavoriteCount <= 47.0
AND u.Reputation >= 836

AND u.Id = p.OwnerUserId
AND c.UserId = u.Id;