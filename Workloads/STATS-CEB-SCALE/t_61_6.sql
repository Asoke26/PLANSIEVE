SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 0
AND p.ViewCount <= 1737.0
AND p.CommentCount <= 11
AND p.FavoriteCount >= 17.0
AND p.FavoriteCount <= 65.0
AND u.UpVotes >= 8
AND p.CreationDate >= 338

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;