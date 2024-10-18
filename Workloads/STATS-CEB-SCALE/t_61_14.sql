SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 11
AND p.ViewCount <= 2654.0
AND p.CommentCount <= 25
AND p.FavoriteCount >= 11.0
AND p.FavoriteCount <= 54.0
AND u.UpVotes >= 84
AND p.CreationDate >= 562

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;