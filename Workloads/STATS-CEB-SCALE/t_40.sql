SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score>=-1
AND p.Score<=10
AND p.AnswerCount<=5
AND p.CommentCount=2
AND p.FavoriteCount>=0
AND p.FavoriteCount<=6
AND u.Views<=33
AND u.DownVotes>=0
AND pl.CreationDate<=1517
AND u.CreationDate>=58
AND u.CreationDate<=1506
AND b.Date<=1541

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;