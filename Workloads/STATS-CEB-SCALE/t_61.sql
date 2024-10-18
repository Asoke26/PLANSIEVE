SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score=2
AND p.ViewCount<=7710
AND p.CommentCount<=12
AND p.FavoriteCount>=0
AND p.FavoriteCount<=4
AND u.UpVotes>=0
AND p.CreationDate>=35

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;