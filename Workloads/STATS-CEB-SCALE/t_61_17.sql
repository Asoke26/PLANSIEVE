SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 8
AND p.ViewCount <= 2819.0
AND p.CommentCount <= 24
AND p.FavoriteCount >= 6.0
AND p.FavoriteCount <= 24.0
AND u.UpVotes >= 70
AND p.CreationDate >= 593

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;