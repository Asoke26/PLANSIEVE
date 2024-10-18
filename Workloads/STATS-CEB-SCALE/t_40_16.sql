SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= 16
AND p.Score <= 46
AND p.AnswerCount <= 5.0
AND p.CommentCount = 5
AND p.FavoriteCount >= 0.0
AND p.FavoriteCount <= 29.0
AND u.Views <= 193
AND u.DownVotes >= 0
AND pl.CreationDate <= 1012
AND u.CreationDate >= 466
AND u.CreationDate <= 865
AND b.Date <= 957

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;