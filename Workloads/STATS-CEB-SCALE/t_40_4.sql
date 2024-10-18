SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= 3
AND p.Score <= 81
AND p.AnswerCount <= 27.0
AND p.CommentCount = 7
AND p.FavoriteCount >= 3.0
AND p.FavoriteCount <= 21.0
AND u.Views <= 5680
AND u.DownVotes >= 14
AND pl.CreationDate <= 1206
AND u.CreationDate >= 365
AND u.CreationDate <= 771
AND b.Date <= 665

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;