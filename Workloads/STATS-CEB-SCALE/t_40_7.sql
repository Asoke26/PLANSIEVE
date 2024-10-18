SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= 18
AND p.Score <= 72
AND p.AnswerCount <= 28.0
AND p.CommentCount = 5
AND p.FavoriteCount >= 6.0
AND p.FavoriteCount <= 43.0
AND u.Views <= 2866
AND u.DownVotes >= 8
AND pl.CreationDate <= 1418
AND u.CreationDate >= 534
AND u.CreationDate <= 675
AND b.Date <= 702

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;