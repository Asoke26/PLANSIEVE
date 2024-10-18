SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 0
AND p.ViewCount <= 5808.0
AND p.CommentCount <= 3
AND p.FavoriteCount >= 15.0
AND p.FavoriteCount <= 16.0
AND u.UpVotes >= 270
AND p.CreationDate >= 138

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;