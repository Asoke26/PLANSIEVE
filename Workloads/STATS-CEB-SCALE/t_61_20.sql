SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 7
AND p.ViewCount <= 3681.0
AND p.CommentCount <= 19
AND p.FavoriteCount >= 18.0
AND p.FavoriteCount <= 23.0
AND u.UpVotes >= 463
AND p.CreationDate >= 499

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;