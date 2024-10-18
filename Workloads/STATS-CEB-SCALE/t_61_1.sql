SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 4
AND p.ViewCount <= 1780.0
AND p.CommentCount <= 13
AND p.FavoriteCount >= 11.0
AND p.FavoriteCount <= 32.0
AND u.UpVotes >= 167
AND p.CreationDate >= 329

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;