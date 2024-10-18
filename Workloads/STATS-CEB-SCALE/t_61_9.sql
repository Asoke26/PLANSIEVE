SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 4
AND p.ViewCount <= 3435.0
AND p.CommentCount <= 24
AND p.FavoriteCount >= 18.0
AND p.FavoriteCount <= 37.0
AND u.UpVotes >= 160
AND p.CreationDate >= 290

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;