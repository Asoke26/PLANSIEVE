SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 1
AND p.ViewCount <= 219.0
AND p.CommentCount <= 5
AND p.FavoriteCount >= 2.0
AND p.FavoriteCount <= 18.0
AND u.UpVotes >= 237
AND p.CreationDate >= 543

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;