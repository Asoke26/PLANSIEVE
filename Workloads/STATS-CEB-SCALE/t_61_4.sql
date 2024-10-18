SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 3
AND p.ViewCount <= 2525.0
AND p.CommentCount <= 19
AND p.FavoriteCount >= 10.0
AND p.FavoriteCount <= 111.0
AND u.UpVotes >= 270
AND p.CreationDate >= 252

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;