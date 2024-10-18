SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 4
AND p.ViewCount <= 2510.0
AND p.CommentCount <= 22
AND p.FavoriteCount >= 23.0
AND p.FavoriteCount <= 69.0
AND u.UpVotes >= 350
AND p.CreationDate >= 60

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;