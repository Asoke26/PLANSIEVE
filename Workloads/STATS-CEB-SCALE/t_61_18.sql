SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 3
AND p.ViewCount <= 1525.0
AND p.CommentCount <= 8
AND p.FavoriteCount >= 0.0
AND p.FavoriteCount <= 8.0
AND u.UpVotes >= 492
AND p.CreationDate >= 915

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;