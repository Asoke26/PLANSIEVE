SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 0
AND p.ViewCount <= 9880.0
AND p.CommentCount <= 35
AND p.FavoriteCount >= 11.0
AND p.FavoriteCount <= 137.0
AND u.UpVotes >= 93
AND p.CreationDate >= 784

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;