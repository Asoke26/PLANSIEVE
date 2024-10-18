SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 5
AND p.ViewCount <= 1844.0
AND p.CommentCount <= 6
AND p.FavoriteCount >= 3.0
AND p.FavoriteCount <= 22.0
AND u.UpVotes >= 64
AND p.CreationDate >= 98

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;