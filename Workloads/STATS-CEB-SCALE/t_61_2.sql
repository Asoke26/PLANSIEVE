SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 5
AND p.ViewCount <= 75058.0
AND p.CommentCount <= 5
AND p.FavoriteCount >= 4.0
AND p.FavoriteCount <= 82.0
AND u.UpVotes >= 2
AND p.CreationDate >= 1205

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;