SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 2
AND p.ViewCount <= 2789.0
AND p.CommentCount <= 23
AND p.FavoriteCount >= 22.0
AND p.FavoriteCount <= 32.0
AND u.UpVotes >= 131
AND p.CreationDate >= 63

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;