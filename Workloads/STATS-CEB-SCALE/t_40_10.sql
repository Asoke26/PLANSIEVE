SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= -7
AND p.Score <= 124
AND p.AnswerCount <= 6.0
AND p.CommentCount = 0
AND p.FavoriteCount >= 2.0
AND p.FavoriteCount <= 32.0
AND u.Views <= 47
AND u.DownVotes >= 4
AND pl.CreationDate <= 1119
AND u.CreationDate >= 97
AND u.CreationDate <= 1321
AND b.Date <= 1096

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;