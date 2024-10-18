SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= -9
AND p.Score <= 156
AND p.AnswerCount <= 18.0
AND p.CommentCount = 1
AND p.FavoriteCount >= 20.0
AND p.FavoriteCount <= 51.0
AND u.Views <= 839
AND u.DownVotes >= 6
AND pl.CreationDate <= 1418
AND u.CreationDate >= 123
AND u.CreationDate <= 1477
AND b.Date <= 647

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;