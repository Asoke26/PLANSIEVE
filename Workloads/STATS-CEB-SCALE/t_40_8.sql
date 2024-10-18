SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= -6
AND p.Score <= 94
AND p.AnswerCount <= 25.0
AND p.CommentCount = 7
AND p.FavoriteCount >= 13.0
AND p.FavoriteCount <= 29.0
AND u.Views <= 51
AND u.DownVotes >= 4
AND pl.CreationDate <= 1517
AND u.CreationDate >= 1108
AND u.CreationDate <= 1399
AND b.Date <= 1372

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;