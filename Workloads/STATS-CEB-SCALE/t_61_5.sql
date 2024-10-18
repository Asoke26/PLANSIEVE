SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 13
AND p.ViewCount <= 5272.0
AND p.CommentCount <= 28
AND p.FavoriteCount >= 13.0
AND p.FavoriteCount <= 44.0
AND u.UpVotes >= 32
AND p.CreationDate >= 275

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;